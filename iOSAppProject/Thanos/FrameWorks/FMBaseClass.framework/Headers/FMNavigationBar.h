//
//  FMNavigationBar.h
//  FMBaseClass
//
//  Created by FuXinMing on 2019/5/8.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import <UIKit/UIKit.h>

//异形屏上部预留24.0f高度
#define kSpecialShapedScreenTopInterval 24.0f

@class FMBarItem,FMNavBarButtonItem;

/**
 *  @brief 自定制导航条
 */
@interface FMNavigationBar : UIView
/**
 *  @brief 标题数据项，支持文字/图片的高度自定制，默认优先使用图片
 */
@property(nullable,nonatomic,strong) FMBarItem *titleItem;

/**
 *  @brief 左按钮数据项，支持Plain、Back、Custome样式
 */
@property(nullable,nonatomic,strong) FMNavBarButtonItem *leftBarButtonItem;

/**
 *  @brief 右按钮数据项，支持Plain、Custome样式
 */
@property(nullable,nonatomic,strong) FMNavBarButtonItem *rightBarButtonItem;

/**
 *  @brief 背景图片
 */
@property(nullable,nonatomic,strong) UIImage *backgroundImage;

/**
 *  @brief 分割线宽度，默认1 pixel:1/[[UIScreen mainScreen] scale]
 */
@property(nonatomic,assign) CGFloat separatorHeight;

/**
 *  @brief 分割线颜色，默认[UIColor clearColor]
 */
@property(nullable, nonatomic,strong) UIColor *separatorColor;

/**
 *  @brief 是否隐藏返回按钮
 */
@property(nonatomic,assign) BOOL hidesBackButton;

/**
 导航条上部预留间隔
 
 @return 高度
 */
+(CGFloat)navigationBarTopInterval;
@end


