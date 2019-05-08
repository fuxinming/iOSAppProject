//
//  FMViewController.h
//  FMBaseClass
//
//  Created by FuXinMing on 2019/5/8.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface FMViewController : UIViewController
/**
 *  @brief 用户自定义数据
 */
@property(nullable,nonatomic,strong) id userInfo;

/**
 导航条高度，默认64.0f
 iOS6会自减20pt，iPhone X会自增24pt
 */
@property(nonatomic,assign) CGFloat navigationBarHeight;

/**
 *  @brief 导航条，可直接操作关于navigationBar的任何外部设置
 */
@property(nullable,nonatomic,strong)FMNavigationBar  *navigationBar;

/**
 *  @brief 侧边栏控制器
 */
@property(nullable,nonatomic,strong) FMSideBarController *sideBarController;

/**
 *  @brief tabbar控制器
 */
@property(nullable,nonatomic,strong) FMTabBarViewController *tabBarController;

/**
 *  @brief 初始时是否隐藏返回按钮
 */
@property(nonatomic,assign) BOOL hideBackBtn;

/**
 viewWillAppear之后执行
 */
@property (nonatomic,copy) void(^_Nullable viewWillAppearBlock)(void);

/**
 viewdidload之后执行
 */
@property (nonatomic,copy) void(^_Nullable viewDidloadBlock)(void);


/**
 viewdiddisappear之后执行
 */
@property (nonatomic,copy) void (^ _Nullable viewDidDisappearBlock)(void);


/**
 viewdidAppear之后执行
 */
@property (nonatomic,copy) void (^ _Nullable viewDidAppearBlock)(void);
/**
 init后的设置函数
 */
-(void)setup;

/**
 *  @brief 设置导航条中间logo
 *
 *  @param image 图片
 */
-(void)setNavigationBarLogoImage:(nullable UIImage *)image;

/**
 *  @brief 隐藏、显示导航条
 *
 *  @param hidden   是否隐藏
 *  @param animated 是否动画
 */
-(void)setNavigationBarHidden:(BOOL)hidden animated:(BOOL)animated;

/**
 *  @brief 初始化导航条，允许子类复写来定制导航条
 */
-(void)initNavigationBar;

/**
 *  @brief 构造返回按钮样式，允许子类复写来定制风格
 *
 *  @return PCDBarButtonItem
 */
-(nullable FMNavBarButtonItem *)backBarButtonItem;

/**
 *  @brief 导航条返回按钮事件，允许子类复写，自定义跳转
 */
-(void)backBarButtonPressed:(nullable FMNavBarButtonItem *)sender;

/**
 *  @brief 皮肤更新，子类复写
 */
-(void)themeSettingDidUpdate;
@end


