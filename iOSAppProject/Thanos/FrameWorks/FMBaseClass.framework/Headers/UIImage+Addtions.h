//
//  UIImage+Addtions.h
//  FMBaseClass
//
//  Created by FuXinMing on 2019/5/9.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSUInteger, GradientType) {
    GradientTypeTopToBottom = 0,//从上到下
    GradientTypeLeftToRight = 1,//从左到右
};

@interface UIImage (Addtions)
//颜色获取图片
+ (UIImage *)imageWithColor:(UIColor *)color;

//获取渐变色图片
+ (UIImage *)getGradientImageFromColors:(NSArray*)colors gradientType:(GradientType)gradientType imgSize:(CGSize)imgSize;
@end


