#include "LSMC.hpp"

void LSMC::LoadSmallMotionClip(char *fullpath ,char *data_name)
{
    VideoCapture cap(fullpath);
    if(!cap.isOpened()){  // check if we succeeded
        cout<<"Sorry,can not open the video file"<<endl;
        return;
    }
    num_image=cap.get(CV_CAP_PROP_FRAME_COUNT)+1;
    num_image=(num_image>30)?30:num_image;    
    cout<<"num frame: "<<num_image<<endl;
    image_width=cap.get(CV_CAP_PROP_FRAME_WIDTH);
    image_height=cap.get(CV_CAP_PROP_FRAME_HEIGHT);
    cout<< "image size: "<<image_width<<" "<<image_height<<endl;
    
    for(int i=1;i<=num_image;i++)
    {
        Mat frame;
        cap >> frame; // get a new frame from camera
        char picpath[1024];
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
        // cout<<"this is pic"<<i<<endl;

        sprintf(picpath,"../image/%s/%s.jpg",data_name,num_str);
        imwrite(picpath,frame);
        images.push_back(frame);
    }
}