#ifndef LimitTest_hpp
#define LimitTest_hpp

#include <iostream>
#include <stdlib.h>
#include <stdio.h>
#include <string>
#include <vector>
#include <time.h>
#include <fstream>
#include <algorithm>
#include "opencv2/opencv.hpp"

using namespace std;
using namespace cv;

class LimitTest 
{
public:
    LimitTest() {}
    ~LimitTest() {}

    void blurBestImages(string image_name, int frame_num); 
    int blur_frame;

private:
    std::vector<Mat> images;
    std::vector<std::vector<Mat> > dctMap; 
    double minCoff, maxCoff; 
    int frame_num;  
};

#endif