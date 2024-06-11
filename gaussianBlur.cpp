#include <opencv2/opencv.hpp>
#include <iostream>

int main() {
    cv::Mat image = cv::imread("winter.jpg", cv::IMREAD_COLOR);
    if(image.empty()) {
        std::cerr << "Could not open or find the image" << std::endl;
        return -1;
    }

    cv::Mat processedImage;
    cv::GaussianBlur(image, processedImage, cv::Size(15, 15), 0);

    cv::imwrite("output.jpg", processedImage);

    return 0;
}
