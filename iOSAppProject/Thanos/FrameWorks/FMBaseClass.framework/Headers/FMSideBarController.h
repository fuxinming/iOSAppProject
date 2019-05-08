//
//  FMSideBarController.h
//  FMBaseClass
//
//  Created by FuXinMing on 2019/5/8.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FMSideBarAnimation.h"

//打开侧边通知
UIKIT_EXTERN NSString *_Nonnull const PCDSideBarDidShowNotification;

//关闭侧边通知
UIKIT_EXTERN NSString *_Nonnull const PCDSideBarDidHiddenNotification;


/**
 *  侧边栏控制器，未兼容横竖屏切换
 */
@interface FMSideBarController : UIViewController
/**
 *  中间视图控制器
 */
@property(nonnull,nonatomic,strong) UIViewController *middleViewController;
/**
 *  左侧视图控制器
 */
@property(nullable,nonatomic,strong) UIViewController *leftViewController;
/**
 *  右侧视图控制器
 */
@property(nullable,nonatomic,strong) UIViewController *rightViewController;
/**
 *  可视侧边占屏幕宽度的百分比，默认0.8。范围0.1~0.9
 */
@property(nonatomic,assign) CGFloat visibleSidePercentage;
/**
 *  侧边栏是否出现，只读
 */
@property(nonatomic,assign,readonly) BOOL sideBarDidShow;
/**
 *  动画样式，默认SideBarTransitionLinear
 */
@property(nonatomic,assign) SideBarTransitionStyle transitionstyle;
/**
 *  动画时间，默认0.2s
 */
@property(nonatomic,assign) NSTimeInterval animationDuration;
/**
 *  背景图片
 */
@property(nullable,nonatomic,strong) UIImage *backgroundImage;
/**
 *  是否支持手势操作，默认支持
 */
@property(nonatomic,assign) BOOL gestureAvailable;

/**
 *  快速初始化
 *
 *  @param middleVC 中间视图控制器
 *  @param leftVC   左侧视图控制器
 *  @param rightVC  右侧控制器
 *  @param style    动画样式
 *
 *  @return 实例化
 */
-(nullable id)initWithMiddleController:(nonnull UIViewController *)middleVC leftController:(nullable UIViewController *)leftVC rightController:(nullable UIViewController *)rightVC transitionStyle:(SideBarTransitionStyle)style;

/**
 *  关闭侧边控制器
 */
-(void)dismissSideBarViewController;

/**
 *  打开左侧边栏
 *
 *  @param style 动画样式，为空则使用self.transitionstyle
 */
-(void)presentLeftSideBarViewController:(SideBarTransitionStyle)style;

/**
 *  打开右侧边栏
 *
 *  @param style style 动画样式，为空则使用self.transitionstyle
 */
-(void)presentRightSideBarViewController:(SideBarTransitionStyle)style;
@end


