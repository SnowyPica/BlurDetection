#include <iostream>
#include <stdio.h>
#include "img_convert.hpp"
#include "LSMC.hpp"
#include "LaplacianDeblur.hpp"
#include "LimitTest.hpp"

using namespace std;
int main(int argc, const char * argv[])
{
    char data_name[1024], video_format[1024];
    
    if (argc!=3) {
        return -1;
    }
    else {
        sprintf(data_name, "%s", argv[1]);
        sprintf(video_format, "%s", argv[2]);
    }

    char fullpath[1024];
    sprintf(fullpath,"../Dataset/%s.%s",data_name,video_format);
    cout <<fullpath<<endl;
    LSMC lsmc;
    lsmc.LoadSmallMotionClip(fullpath,data_name);

    string image_path;
    image_path = data_name;
    // img_convert convert;
    // convert.blurRandomImages(image_path, 30);

    LimitTest limit_test;
    limit_test.blurBestImages(image_path, 30);

    LaplacianDeblur deblur1;
    deblur1.loadImages(image_path,30);
    deblur1.blurDetect(image_path,30);

    return 0;   
}