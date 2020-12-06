//
// Created by danieljpietz on 12/5/20.
//

#include "GetBoard.h"
#include <opencv2/opencv.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/imgproc.hpp>
#include <vector>

using namespace cv;
using namespace std;

std::vector<Mat3b> buffer;


Mat3b getMean(const vector<Mat3b> &images) {
    if (images.empty()) return Mat3b();

    // Create a 0 initialized image to use as accumulator
    Mat m(images[0].rows, images[0].cols, CV_64FC3);
    m.setTo(Scalar(0, 0, 0, 0));

    // Use a temp image to hold the conversion of each input image to CV_64FC3
    // This will be allocated just the first time, since all your images have
    // the same size.
    Mat temp;
    for (int i = 0; i < images.size(); ++i) {
        // Convert the input images to CV_64FC3 ...
        images[i].convertTo(temp, CV_64FC3);

        // ... so you can accumulate
        m += temp;
    }

    // Convert back to CV_8UC3 type, applying the division to get the actual mean
    m.convertTo(m, CV_8U, 1. / images.size());
    return m;
}

double avgCircleRadius = 10;

std::array<std::array<char, 7>, 6> getBoardArray(std::array<std::array<Point, 7>, 6> board, Mat src) {
    std::array<std::array<char, 7>, 6> currentBoard;
    for (int i = 0; i < 6; ++i) {
        for (int j = 0; j < 7; ++j) {
            auto center = board.at(i).at(j);
            auto radius = 10;
            Mat mask = Mat::zeros(src.rows, src.cols, CV_8UC1);
            circle(mask, center, radius, Scalar(255, 255, 255), FILLED, 8, 0);
            Scalar mm = mean(src, mask);
            Scalar color;
            if (mm[0] < 100 and mm[1] < 100 and mm[2] < 100) {
                currentBoard[i][j] = 'O';
            } else {
                currentBoard[i][j] = 'X';
            }

        }
    }
    return currentBoard;
}

bool isBoardEqual(std::array<std::array<char, 7>, 6> board1, std::array<std::array<char, 7>, 6> board2) {
    for (int i = 0; i < 6; ++i) {
        for (int j = 0; j < 7; ++j) {
            if (board1.at(i).at(j) != board2.at(i).at(j)) {
                return false;
            }
        }
    }
    return true;
}

bool isBufferEqual(ATLAS::CircularBuffer<boardBufferSize, std::array<std::array<char, 7>, 6>> buffer) {
    for (int i = 0; i < 6; ++i) {
        for (int j = 0; j < 7; ++j) {
            for (int k = 1; k < boardBufferSize; ++k) {
                if (not isBoardEqual(buffer.at(k - 1), buffer.at(k))) {
                    return false;
                }
            }
        }
    }
    return true;
}

int getMoveLocation(std::array<std::array<char, 7>, 6> board1, std::array<std::array<char, 7>, 6> board2) {
    for (int i = 0; i < 6; ++i) {
        for (int j = 6; j >= 0; --j) {
            if (board1.at(i).at(j) != board2.at(i).at(j)) {
                return j + 1;
            }
        }
    }
    return 0;
}

void printBoard(std::array<std::array<char, 7>, 6> board) {
    for (int i = 0; i < 6; ++i) {
        for (int j = 0; j < 7; ++j) {
            std::cout << " " << board.at(i).at(j) << " ";
        }
        std::cout << std::endl;
    }
}

#define moveWaitThreshold 10

cv::Mat lastAvg;
#define bufferSize 1
bool firstIter = true;
int bufferIndex = 0;

std::array<std::array<char, 7>, 6> getBoard(cv::VideoCapture cap) {
    cv::Mat src;
    cap >> src;
    if (firstIter) {
        for (int i = 0; i < bufferSize; ++i) {
            buffer.push_back(src);
        }
        firstIter = false;
    } else {
        buffer[bufferIndex++ % bufferSize] = src;
    }
    src = getMean(buffer);
    Mat gray;
    cvtColor(src, gray, COLOR_BGR2GRAY);
    medianBlur(gray, gray, 1);
    std::vector<Vec3f> circles;
    std::vector<int> radii;
    HoughCircles(gray, circles, HOUGH_GRADIENT, 1,
                 gray.rows / 64,  // change this value to detect circles with different distances to each other
                 100, 30, 9, 16 // change the last two parameters
            // (min_radius & max_radius) to detect larger circles
    );

    int minX, minY, maxX, maxY = 0;

    minX = circles[0][0];
    minY = circles[0][1];
    maxX = circles[0][0];
    maxY = circles[0][1];

    for (size_t i = 0; i < circles.size(); i++) {
        Vec3i c = circles[i];
        radii.push_back(c[2]);
        Point center = Point(c[0], c[1]);

        if (center.x <= minX) {
            minX = center.x;
        } else if (center.x >= maxX) {
            maxX = center.x;
        }

        if (center.y <= minY) {
            minY = center.y;
        } else if (center.y >= maxY) {
            maxY = center.y;
        }

        //circle(src, center,radius, color,FILLED, 8,0);
        //circle( src, center, 1, Scalar(0,100,100), 3, LINE_AA);
        //circle( src, center, radius, Scalar(255,0,255), 3, LINE_AA);
    }
    for (int i = 0; i < radii.size(); ++i) {
        avgCircleRadius += radii[i] / radii.size();
    }
    std::array<std::array<Point, 7>, 6> board;

    for (size_t i = 0; i < circles.size(); i++) {
        Vec3i c = circles[i];
        Point center = Point(c[0], c[1]);
        int boardX = ceil(7 * (((float) center.x - minX) / (maxX - minX))) - 1;
        if (boardX == -1) {
            ++boardX;
        }
        int boardY = ceil(6 * (((float) center.y - minY) / (maxY - minY))) - 1;
        if (boardY == -1) {
            ++boardY;
        }
        board.at(boardY).at(boardX) = center;
    }

    std::array<std::array<char, 7>, 6> currentBoard = getBoardArray(board, src);

    return currentBoard;
}