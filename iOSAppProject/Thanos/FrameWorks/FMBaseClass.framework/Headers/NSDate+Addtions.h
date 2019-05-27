//
//  NSDate+Addtions.h
//  FMBaseClass
//
//  Created by FuXinMing on 2019/5/27.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface NSDate (Addtions)
/**
 *  @brief  NSDate转化为指定格式的时间字符串
 *
 *  @param dateFormat 时间格式
 *
 *  @return 字符串
 */
-(NSString *)stringFromFormat:(NSString *)dateFormat;

/**
 *  @brief  NSDate转化为指定格式的时间字符串
 *
 *  @param dateFormat 时间格式
 *  @param timeZone   时区
 *
 *  @return 字符串
 */
-(NSString *)stringFromFormat:(NSString *)dateFormat timeZone:(NSTimeZone *)timeZone;

/**
 *  @brief  获取NSDate对应的Unix时间戳
 *
 *  @param date    NSDate
 *  @param yesOrNo 是:精确到毫秒;否:精确到秒
 *
 *  @return NSString
 */
+(NSString *)timestampFromDate:(NSDate *)date msAccurated:(BOOL)yesOrNo;

/**
 *  @brief  Unix格式时间转化为NSDate
 *
 *  @param unixString Unix格式时间字符串
 *  @param yesOrNo    是:精确到毫秒;否:精确到秒
 *
 *  @return NSDate
 */
+(NSDate *)dateFromUnixString:(NSString *)unixString msAccurated:(BOOL)yesOrNo;

/**
 *  @brief  NSDate转化为指定格式的时间字符串
 *
 *  @param date NSDate
 *  @param dateFormat 时间格式
 *
 *  @return 字符串
 */
+(NSString *)stringFromDate:(NSDate *)date format:(NSString *)dateFormat;

/**
 *  @brief  字符串根据格式转化为NSDate
 *
 *  @param string 时间字符串
 *  @param dateFormat 时间格式
 *
 *  @return NSDate
 */
+(NSDate *)dateFromString:(NSString *)string format:(NSString *)dateFormat;

/**
 *  @brief  字符串根据格式转化为NSDate
 *
 *  @param string     时间字符串
 *  @param dateFormat 时间格式
 *  @param timeZone   时区
 *
 *  @return NSDate
 */
+(NSDate *)dateFromString:(NSString *)string format:(NSString *)dateFormat timeZone:(NSTimeZone *)timeZone;

/**
 *  @brief  当前NSDate的年份
 *
 *  @param date NSDate
 *
 *  @return 哪年
 */
+ (NSUInteger)yearFromDate:(NSDate *)date;

/**
 *  @brief  当前NSDate的月份
 *
 *  @param date NSDate
 *
 *  @return 哪月
 */
+ (NSUInteger)monthFromDate:(NSDate *)date;

/**
 *  @brief  当前NSDate的天数
 *
 *  @param date NSDate
 *
 *  @return 哪天
 */
+ (NSUInteger)dayFromDate:(NSDate *)date;

/**
 *  @brief  当前NSDate的小时数
 *
 *  @param date NSDate
 *
 *  @return 几时
 */
+ (NSUInteger)hourFromDate:(NSDate *)date;

/**
 *  @brief  当前NSDate的分钟数
 *
 *  @param date NSDate
 *
 *  @return 几分
 */
+ (NSUInteger)minuteFromDate:(NSDate *)date;

/**
 *  @brief  当前NSDate的秒数
 *
 *  @param date NSDate
 *
 *  @return 几秒
 */
+ (NSUInteger)secondFromDate:(NSDate *)date;

/**
 *  @brief  NSDate是否是闰年
 *
 *  @param date NSDate
 *
 *  @return 是否是闰年
 */
+ (BOOL)isLeapYear:(NSDate *)date;

/**
 *  @brief  NSDate这年有多少天
 *
 *  @param date NSDate
 *
 *  @return 总天数
 */
+ (NSUInteger)daysInYearFromDate:(NSDate *)date;

/**
 *  @brief  NSDate这月有多少天
 *
 *  @param date NSDate
 *
 *  @return 总天数
 */
+ (NSUInteger)daysInMonthFromDate:(NSDate *)date;

/**
 *  @brief  NSDate对应的星期数
 *
 *  @param date NSDate
 *
 *  @return 星期数(1~7:星期天~星期六)
 */
+ (NSUInteger)weekdayFromDate:(NSDate *)date;

/**
 *  @brief  是否是同一年份
 *
 *  @param date1 日期1
 *  @param date2 日期2
 *
 *  @return 是否同年
 */
+ (BOOL)isSameYear:(NSDate *)date1 compare:(NSDate *)date2;

/**
 *  @brief  是否是同一年份同一月份
 *
 *  @param date1 日期1
 *  @param date2 日期2
 *
 *  @return 是否同年同月
 */
+ (BOOL)isSameMonth:(NSDate *)date1 compare:(NSDate *)date2;

/**
 *  @brief  是否是同一天
 *
 *  @param date1 日期1
 *  @param date2 日期2
 *
 *  @return 是否同年同月同日
 */
+ (BOOL)isSameDay:(NSDate *)date1 compare:(NSDate *)date2;
@end


