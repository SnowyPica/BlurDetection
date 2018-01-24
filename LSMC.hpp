#ifndef LSMC_hpp
#define LSMC_hpp

#include <iostream>
#include <stdio.h>
#include <vector>
#include <time.h>
#include "opencv2/opencv.hpp"

using namespace std;
using namespace cv;

class LSMC
{
public:
    LSMC() {}
    ~LSMC() {}
    void LoadSmallMotionClip(char *fullpath,char *data_name);

private:
    std::vector<Mat> images;
    int num_image;
    int image_width;
    int image_height;
};

#endif
