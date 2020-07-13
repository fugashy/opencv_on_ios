//
//  OpenCVWrapper.m
//  opencv_on_ios
//
//  Created by fukukazu kawata on 2020/07/13.
//  Copyright © 2020 fukukazu kawata. All rights reserved.
//
#import <opencv2/opencv.hpp>
#import <opencv2/highgui.hpp>
#import <opencv2/imgcodecs/ios.h>
#import "OpenCVWrapper.h"

@implementation OpenCVWrapper

- (UIImage*) toGray:(UIImage *)img{
  CGColorSpaceRef colorSpace = CGImageGetColorSpace(img.CGImage);
  CGFloat cols = img.size.width;
  CGFloat rows = img.size.height;

  cv::Mat mat(rows, cols, CV_8UC4);

  CGContextRef contextRef = CGBitmapContextCreate(
      mat.data, cols, rows, 8, mat.step[0],
      colorSpace,
      kCGImageAlphaNoneSkipLast | kCGBitmapByteOrderDefault);

  CGContextDrawImage(contextRef, CGRectMake(0, 0, cols, rows), img.CGImage);
  CGContextRelease(contextRef);

  cv::Mat grayImg;
  cv::cvtColor(mat, grayImg, cv::COLOR_BGR2GRAY);

  UIImage *resultImg = MatToUIImage(grayImg);
  return resultImg;
}

@end
