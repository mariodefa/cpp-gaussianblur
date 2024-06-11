# cpp-gaussianblur
Image Gaussian blur processor C++ example using OpenCV2

## Create Docker Imgs
```Shell
cd amarrettopencv
docker build -t amarrettopencv .
cd ..
docker build -t gaussianblur .
```  

## Run it
Create a container from gaussianblur docker image  
Open a bash inside the new gaussianblur's container and run:   
```Shell
./build/GaussianBlur
```