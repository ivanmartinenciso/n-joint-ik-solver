
cmake_minimum_required(VERSION 3.14)  
project(n_joint_ik_solver)              
set(CMAKE_CXX_STANDARD 17)   
set(CMAKE_CXX_STANDARD_REQUIRED ON)         

include(FetchContent)
FetchContent_Declare(
  eigen
  GIT_REPOSITORY https://gitlab.com/libeigen/eigen.git
  GIT_TAG        5.0.0
)

#FetchContent_Declare(
#  googletest
#  GIT_REPOSITORY https://github.com/google/googletest.git
#  GIT_TAG        v1.18.x
#)

FetchContent_MakeAvailable(eigen)  # Add googletest for phase 3

add_executable(main src/main.cpp)

target_link_libraries(main Eigen3::Eigen)
# target_link_libraries(test GTest::gtest_main) Not sure here if test is the target link