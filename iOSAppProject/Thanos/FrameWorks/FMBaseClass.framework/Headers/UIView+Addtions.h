//
//  UIView+Addtions.h
//  FMBaseClass
//
//  Created by FuXinMing on 2019/5/9.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface UIView (Addtions)
@property (nonatomic) CGFloat left;
@property (nonatomic) CGFloat top;
@property (nonatomic) CGFloat right;
@property (nonatomic) CGFloat bottom;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;
@property (nonatomic) CGPoint origin;
@property (nonatomic) CGSize size;
@property (nonatomic) CGFloat centerX;
@property (nonatomic) CGFloat centerY;

/**
 *    @brief    获取传递UIView或者其subviews是Class的
 */
- (UIView *)descendantOrSelfWithClass:(Class) cls;

/**
 *    @brief    获取View所属的view controller
 */
- (UIViewController *)viewController;

- (UINavigationController *)navigationController;

/**
 *    @brief    长度、宽度按百分比缩放
 */
- (void)resizeToPrecent:(float) precent;

- (void)removeAllSubviews;

/**
 *  @brief 判断自己是否在父视图上
 */
- (BOOL)visiable;

/**
 *  @brief  切圆角
 */
- (void)cornerRadius:(CGFloat)radius;

/**
 *  @brief  切圆
 */
- (void)cutCircle;

-(void)cornerRadius:(float)radius borderWidth:(float)borderW borderColor:(UIColor *)color;
-(void)shadowRadius:(float)radius shadowOpacity:(float)opacity shadowColor:(UIColor *)color shadowOffset:(CGSize)offset;
@end


