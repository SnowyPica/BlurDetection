#include "img_convert.hpp"

void img_convert::blurRandomImages(string image_name, int frame_num_){
    //srand((int)time(0));
    frame_num = frame_num_;
    //初始化isBlur标记，用来标记每一帧是否有Blur,初始化都没有Blur
    for(int i=1; i <= frame_num ;i++){
        isBlur[frame_num] = 0;
    }

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
        // std::cout << fullname << std::endl;
        src = imread(fullname);
        imwrite(blur_fullname, src);
        //cout << "image height is:" << src.size().height << " width is: " << src.size().width << endl;
        images.push_back(src);
    }

    //用以随机选择10个模糊图像
    for(int i = 0; i < 10 ; ){
        int temp = rand()%frame_num;
        if(isBlur[temp]==0){
            isBlur[temp] = 1;
            i++;
        }
    }

    for(int i = 0; i < 30; i++){
        if(isBlur[i]==1){
            int num = i;
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
            // std::cout << fullname << std::endl;
            Mat dst;
            //float window_[16]={1/16.0,1/16.0,1/16.0,1/16.0,1/16.0,1/16.0,1/16.0,1/16.0,1/16.0,1/16.0,1/16.0,1/16.0,1/16.0,1/16.0,1/16.0,1/16.0};
            // float window_[36]={0,0,0,0,0,1/6.0,\
            //                    0,0,0,0,1/6.0,0,\
            //                    0,0,0,1/6.0,0,0,\
            //                    0,0,1/6.0,0,0,0,\
            //                    0,1/6.0,0,0,0,0,\
            //                    1/6.0,0,0,0,0,0};
            float window_[9] = {0,0,1/3.0,
                                0,1/3.0,0,
                                1/3.0,0,0};
            Mat kern = Mat(3,3,CV_32FC1,window_);
            filter2D(images[num],dst,images[num].depth(),kern);
            dst.copyTo(images[num]);
            isBlur[num] = 1;
            //blur(images[num],dst,Size(4,4))；
            if(!dst.data) cout << "image is not created successfully!\n"<<endl;
            imwrite(fullname, dst);
        }

    }
}