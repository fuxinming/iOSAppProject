//
//  FMUtil.h
//  FMBaseClass
//
//  Created by FuXinMing on 2019/5/9.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface FMUtil : NSObject
#pragma mark -字符串安全处理
/**
 判断字符串是否为空
 
 @param string 待验证字符串
 @return 判断结果
 */
+(BOOL)nilOrEmptyString:(nullable NSString *)string;
/**
 字符串非空返回
 
 @param string 待验证字符串
 @return 返回非nil字符串
 */
+(nonnull NSString *)safeString:(nullable NSString *)string;


/**
 是否是iphoneX
 @return 是否
 */
+(BOOL)IsIphoneX;

@end


