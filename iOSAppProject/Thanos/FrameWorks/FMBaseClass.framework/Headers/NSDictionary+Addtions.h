//
//  NSDictionary+Addtions.h
//  FMBaseClass
//
//  Created by FuXinMing on 2019/5/25.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface NSDictionary (Addtions)
-(NSString *)toJsonString;

/**
 *  @brief  是否存在key值
 *
 *  @param key 键值
 *
 *  @return 是否存在
 */
-(BOOL)existKey:(NSString *)key;

/**
 *  @brief  通过key解析到字符串
 *
 *  @param key 键值
 *
 *  @return 字符串
 */
- (NSString *)stringForKey:(id)key;

/**
 *  @brief  通过key解析到数组
 *
 *  @param key 键值
 *
 *  @return 数组
 */
- (NSArray *)arrayForKey:(id)key;

/**
 *  @brief  通过key解析到字典
 *
 *  @param key 键值
 *
 *  @return 字典
 */
- (NSDictionary *)dictionaryForKey:(id)key;

/**
 *  @brief  通过key解析到Number对象
 *
 *  @param key 键值
 *
 *  @return Number对象
 */
- (NSNumber *)numberForKey:(id)key;

/**
 *  @brief  通过key解析到bool
 *
 *  @param key 键值
 *
 *  @return bool
 */
- (BOOL)boolForKey:(id)key;

/**
 *  @brief  通过key解析到DecimalNumber对象
 *
 *  @param key 键值
 *
 *  @return DecimalNumber对象
 */
- (NSDecimalNumber *)decimalNumberForKey:(id)key;

/**
 *  @brief  通过key解析到Integer
 *
 *  @param key 键值
 *
 *  @return Integer
 */
- (NSInteger)integerForKey:(id)key;

/**
 *  @brief  通过key解析到UInteger
 *
 *  @param key 键值
 *
 *  @return UInteger
 */
- (NSUInteger)unsignedIntegerForKey:(id)key;

/**
 *  @brief  将字典转化为URL传参格式的字符串
 *
 *  @return 字符串
 */
- (NSString *)urlQueryString;

/**
 url参数解析成字典
 
 @param urlQueryString url参数字符串
 @return 字典
 */
+(NSDictionary *)dictFromURLQueryString:(NSString *)urlQueryString;

@end


