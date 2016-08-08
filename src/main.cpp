#include "main.h"

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>
#include <vector>
using namespace std;

#include <opencv2/opencv.hpp>
using namespace cv;

int main(int argc, char* argv[])
{
	Mat m = imread(argv[1], CV_LOAD_IMAGE_COLOR);
	imshow("m", m);
	waitKey();
	return 0;
}
