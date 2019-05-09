//
//  UIFont+Addtions.h
//  FMBaseClass
//
//  Created by FuXinMing on 2019/5/9.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIFont (Addtions)
+(UIFont *)fontName:(NSString *)name size:(int)size;
+(UIFont *)fontSize:(int)size;
+(UIFont *)mediumFont:(int)size;
+(UIFont *)semiboldFont:(int)size;
+(UIFont *)boldFont:(int)size;
@end


