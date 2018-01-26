#include "LaplacianDeblur.hpp"

void LaplacianDeblur::loadImages(string image_name ,int num_image){
    for(int i = 1; i <= num_image; i++){
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
        string blur_fullname =  "../image_blur/" + image_name + '/' + frameNumStr + ".jpg";
        // cout<<blur_fullname<<endl;
        src = imread(blur_fullname);
        if(src.data){
            images.push_back(src);
        }
        else{
            cout<<"加载图像失败"<<endl;
        }
    }
}

//cmp 
bool LaplacianDeblur::cmp(_variance a, _variance b){
    return a.variance > b.variance;
}

void LaplacianDeblur::blurDetect(string image_name,int num_image){
    ofstream outf;
    image_name = "../result/"+image_name+"/"+image_name+".txt"; 
    cout<<image_name<<endl;
    const char *outfile = image_name.data();
    outf.open(outfile);//覆盖写
    // outf.open(outfile, std::ios::out | std::ios::app);//不覆盖写
    
    // for(int i=0; i<num_image; i++){
    //     blur[i] = 0;
    // }
    // mean_blur = 0;
    // mean_not_blur = 0;
    for(int i=0;i<num_image;i++){
        if(blur[i]==1){
            cout<<"Frame "<< i <<" is Blur"<<endl;
            outf<<"Frame "<< i <<" is Blur"<<"\r\n";
        }
    }
    _variance var[num_image];
    cout<<images.size()<<endl;  
    outf << "Frame_Num"<<"\t"<<"Mean"<<"\t\t"<<"Variance"<<"\t"<<"Class"<<"\r\n";
    for(int i=0; i<num_image; i++){
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
        var[i].num = i+1;
        var[i].variance = sd1*sd1;
        var[i].mean = m1;
        // cout << "均值: " << m1 << " , 方差: " << sd1*sd1 << endl;
    }
    sort(var, var+num_image, LaplacianDeblur::cmp);
    int select_blur_num = 0;
    for(int i=0;i<15;i++){
        cout << var[i].num<<"\t\t"<< var[i].mean << "\t\t" << var[i].variance <<"\t\t"<<1<<endl;
        outf << var[i].num<<"\t\t"<< var[i].mean << "\t\t" << var[i].variance <<"\t\t"<<1<<"\r\n";
        if(blur[var[i].num]==1){
            select_blur_num++;
        }
    }
    for(int i=15;i<num_image;i++){
        cout << var[i].num<<"\t\t"<< var[i].mean << "\t\t" << var[i].variance <<"\t\t"<<0<<endl;
        outf << var[i].num<<"\t\t"<< var[i].mean << "\t\t" << var[i].variance <<"\t\t"<<0<<"\r\n";
    }

    outf<<"select blur num:"<< select_blur_num <<"\r\n";
    outf.close();
}
