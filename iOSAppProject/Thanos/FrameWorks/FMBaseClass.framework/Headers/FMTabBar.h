//
//  FMTabBar.h
//  FMBaseClass
//
//  Created by FuXinMing on 2019/5/8.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import <UIKit/UIKit.h>

//异形屏底部预留高度
#define kSpecialShapedScreenBottomInterval 34.0f
@class FMTabBarItem;
@protocol FMTabBarDelegate;


/**
 *  @brief 自定制导TabBar
 */
@interface FMTabBar : UIView
/**
 *  @brief 代理
 */
@property(nullable,nonatomic,assign) id<FMTabBarDelegate> delegate;

/**
 *  @brief 基于FMTabBarItem的数据项，赋值将刷新视图
 */
@property(nullable,nonatomic,copy) NSArray<FMTabBarItem *> *items;

/**
 *  @brief 选中项
 */
@property(nullable,nonatomic,strong) FMTabBarItem *selectedItem;

/**
 *  @brief 背景图片
 */
@property(nullable, nonatomic,strong) UIImage *backgroundImage;

/**
 *  @brief 分割线宽度，默认1 pixel:1/[[UIScreen mainScreen] scale]
 */
@property(nonatomic,assign) CGFloat separatorWidth;

/**
 *  @brief 分割线颜色，默认[UIColor clearColor]
 */
@property(nullable, nonatomic,strong) UIColor *separatorColor;

@end

@protocol FMTabBarDelegate <NSObject>

@optional
/**
 *  @brief 点击代理
 *
 *  @param tabBar 实例化
 *  @param item   选中item项
 */
- (void)tabBar:( FMTabBar *_Nonnull)tabBar didSelectItem:(FMTabBarItem *_Nonnull)item;
/**
 *  @brief 点击代理
 *
 *  @param tabBar 实例化
 *  @param index  选中索引
 */
- (void)tabBar:( FMTabBar *_Nullable)tabBar didSelectIndex:(NSUInteger)index;

@end
