//
//  NSString+Validate.h
//  FMBaseClass
//
//  Created by FuXinMing on 2019/5/7.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Validate)


/**
 *    @brief    URL验证
 *    @return BOOL
*/
- (BOOL)isURL;

/*
 *  手机号或者固话验证
 */
- (BOOL) isLandLineOrMobile;
/*
 *  手机号验证
 */
- (BOOL) isMobile;

/*
 *  身份证验证
 */
- (BOOL) isIdCard;

/*
 *  u邮箱验证
 */
-(BOOL)isEmailAddress;

/*
 *  @brief  判断字符串是否含有表情字符
 */
-(BOOL)isContainsEmoji;

- (NSString *)disable_emoji;

@end


