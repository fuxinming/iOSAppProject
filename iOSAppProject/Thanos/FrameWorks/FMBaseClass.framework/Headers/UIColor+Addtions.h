//
//  UIColor+Addtions.h
//  FMBaseClass
//
//  Created by FuXinMing on 2019/5/9.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIColor (Addtions)
+(UIColor *)RGBCOLOR:(float)r g:(float)g b:(float)b;
+(UIColor *)RGBCOLOR:(float)r g:(float)g b:(float)b a:(float)a;
+(UIColor *)ColorFromHexRGB:(NSInteger)hexColor;
+(UIColor *)ColorFromHexRGB:(NSInteger)hexColor a:(float)a;
@end

