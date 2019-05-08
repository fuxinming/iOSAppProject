//
//  FMTabBarItem.h
//  FMBaseClass
//
//  Created by FuXinMing on 2019/5/8.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import "FMBarItem.h"



@interface FMTabBarItem : FMBarItem
/**
 *  @brief 是否选中，默认NO
 */
@property(nonatomic,assign) BOOL selected;

/**
 *  @brief 角标值，默认nil，0显示点，>0显示字符串
 */
@property(nullable,nonatomic,copy) NSString *badgeValue;

/**
 *  @brief 角标背景颜色，默认[UIColor redColor]
 */
@property(nonnull,nonatomic,strong) UIColor *badgeColor;

/**
 *  @brief 角标颜色，默认[UIColor whiteColor]
 */
@property(nonnull,nonatomic,strong) UIColor *badgeValueColor;

/**
 *  @brief 角标位置偏移，默认CGPointZero
 */
@property(nonatomic,assign) CGPoint badgeOffset;

/**
 *  @brief 快速实例化
 *
 *  @param title         标题
 *  @param image         图片
 *  @param selectedImage 选中图片，和imageHL保持一致
 *
 *  @return 实例化
 */
- (nullable instancetype)initWithTitle:(nullable NSString *)title image:(nullable UIImage *)image selectedImage:(nullable UIImage *)selectedImage;

@end


