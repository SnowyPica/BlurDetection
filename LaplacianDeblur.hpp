#ifndef LaplacianDeblur_hpp
#define LaplacianDeblur_hpp

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

class LaplacianDeblur
{
public: 
    LaplacianDeblur() {}
    ~LaplacianDeblur() {}

    void loadImages(string image_name,int num_image);
    void blurDetect(string image_name,int num_image);

    int blur[100];

private:
    struct _variance {
    int num;
    double variance;
    double mean;
    };
    std::vector<Mat> images;
    string image_name;
    int num_image;
    double mean_blur;
    double mean_not_blur;

    static bool cmp(_variance a, _variance b);
};

#endif