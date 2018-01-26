#include "LimitTest.hpp"

void LimitTest::blurBestImages(string image_name, int frame_num){
    blur_frame = 0;
    double max_sd1 = 0;
    for(int i = 1; i <= frame_num; i++){
        Mat src;
        char num_str[3];
        if(i < 10){
            num_str[0] = '0';
            num_str[1] = i+48;
            num_str[2] = '\0';
        }
        else{
            num_str[0] = i/10 + 48;
            num_str[1] = i%10 + 48;
            num_str[2] = '\0';
        }
        string frameNumStr(num_str);
        string fullname =  "../image/" + image_name + '/' + frameNumStr + ".jpg";
        string blur_fullname =  "../image_blur/" + image_name + '/' + frameNumStr + ".jpg";
        src = imread(fullname);
        imwrite(blur_fullname, src);
        images.push_back(src);
    }

    for(int i = 0 ; i < frame_num; i++){
        Mat src;
        Mat gray1;
        src =images[i];
        if(src.channels()!=1){
            cvtColor(src,gray1,CV_RGB2GRAY);
        }
        Mat tmp_m1,tmp_sd1;
        double m1=0,sd1=0;
        Laplacian(gray1, gray1, CV_16S, 3);  
        convertScaleAbs(gray1, gray1);
        meanStdDev(gray1, tmp_m1, tmp_sd1);  
        m1 = tmp_m1.at<double>(0, 0);     //均值  
        sd1 = tmp_sd1.at<double>(0, 0);       //标准差 
        if (sd1 > max_sd1){
            max_sd1 = sd1;
            blur_frame = i;
        }
    }

    cout<<"blur_frame:"<<blur_frame+1<<endl;
    cout<<"max_variance:"<<max_sd1*max_sd1<<endl;

    int num = blur_frame+1;
    char num_str[3];
    if(num < 10){
        num_str[0] = '0';
        num_str[1] = num+48;
        num_str[2] = '\0';
    }
    else{
        num_str[0] = num/10 + 48;
        num_str[1] = num%10 + 48;
        num_str[2] = '\0';
    }
    string frameNumStr(num_str);
    string fullname =  "../image_blur/" + image_name + '/' + frameNumStr + ".jpg";
    string fullname1 = "../compare/" + image_name + '/' + frameNumStr + ".jpg";
    string fullname2 = "../compare/" + image_name + '/' + frameNumStr + "_Blur" + ".jpg";
    imwrite(fullname1,images[num]);
    Mat dst;
    float window_[9] = {0,0,0.0091,
                        0,0.9818,0,
                        0.0091,0,0};
    Mat kern = Mat(3,3,CV_32FC1,window_);
    filter2D(images[num],dst,images[num].depth(),kern);
    dst.copyTo(images[num]);
    if(!dst.data) cout << "image is not created successfully!\n"<<endl;
    imwrite(fullname, dst);
    imwrite(fullname2, dst);

}   