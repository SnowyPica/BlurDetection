#ifndef img_convert_hpp
#define img_convert_hpp

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

class img_convert
{
public:
    img_convert() {
        minCoff = 0.0;
        maxCoff = 0.0;
    }
    ~img_convert() {
    }
    
    void blurRandomImages(string image_name, int frame_num); 
    int isBlur[100];
    
private:
    std::vector<Mat> images;
    std::vector<std::vector<Mat> > dctMap; 
    double minCoff, maxCoff; 
    int frame_num;
    
};

#endif /* img_convert_hpp */