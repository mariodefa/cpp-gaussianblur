# cpp-gaussianblur
Image Gaussian blur processor C++ example using OpenCV2  

## Create Docker Imgs
Alternative: build amarrettopencv takes 1h aprox.  
```Shell
cd pachydermjdk21
docker build -t pachydermjdk21 .
cd ..
docker build -t gaussianblur .
```  

## Run it
Create a container from gaussianblur docker image  
Open a bash inside the new gaussianblur's container and run:   
```Shell
./GaussianBlur
```