//
//  FMTabBarViewController.h
//  FMBaseClass
//
//  Created by FuXinMing on 2019/5/8.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FMTabBar;
@protocol FMTabBarViewControllerDelegate;
/**
 *  @brief 自定制tabBar视图控制器
 */
@interface FMTabBarViewController : UIViewController
/**
 *  @brief 视图控制器数组
 */
@property(nullable, nonatomic,copy) NSArray<UIViewController *> *viewControllers;

/**
 *  @brief 当前选中索引，默认0
 */
@property(nonatomic) NSUInteger selectedIndex;

/**
 *  @brief tabBar视图，对于tabBar的隐藏建议使用setTabBarHidden:animated方法
 */
@property(nullable,nonatomic,strong) FMTabBar *tabBar;

/**
 *  @brief 代理
 */
@property(nullable, nonatomic,weak) id<FMTabBarViewControllerDelegate> delegate;

/**
 *  @brief tabBar视图的高度，默认49.0f
 */
@property (nonatomic,assign) CGFloat tabBarHeight;

/**
 *  @brief 底部高度，默认49.0f
 */
@property (nonatomic,assign) CGFloat bottomHeight;

/**
 *  @brief 属性设置，viewControllers、tabBarHeight、bottomHeight等设置
 */
-(void)setup;

/**
 *  @brief 初始化tabBar，需要子类实现
 */
-(void)initTabBar;

/**
 *  @brief 显示、隐藏tabBar
 *
 *  @param hidden   是否隐藏
 *  @param animated 是否动画
 */
-(void)setTabBarHidden:(BOOL)hidden animated:(BOOL)animated;

@end

@protocol FMTabBarViewControllerDelegate <NSObject>

@optional

/**
 *  @brief 选中代理
 *
 *  @param viewController PCDTabBarController
 *  @param index          索引值
 */
- (void)tabBarController:(FMTabBarViewController *_Nullable)viewController selectedViewAtIndex:(NSUInteger)index;

/**
 是否允许切换，缺省情况下为true
 
 @param viewController PCDTabBarController
 @param index 索引值
 @return 是否可以切换板块
 */
- (BOOL)tabBarController:(FMTabBarViewController *_Nonnull)viewController allowChangeToIndex:(NSUInteger)index;

@end
