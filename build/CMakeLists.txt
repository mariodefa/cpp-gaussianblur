cmake_minimum_required(VERSION 3.10)
project(myproject)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# add opencv external library, sets OpenCV_LIBS var value
find_package(OpenCV REQUIRED)

# GaussianBlur
add_executable(GaussianBlur gaussianBlur.cpp)
target_link_libraries(GaussianBlur PRIVATE ${OpenCV_LIBS})
# add opencv external headers
target_include_directories(GaussianBlur PRIVATE /usr/local/include/opencv4)
