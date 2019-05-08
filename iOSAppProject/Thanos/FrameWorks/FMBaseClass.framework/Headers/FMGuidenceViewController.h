//
//  FMGuidenceViewController.h
//  FMBaseClass
//
//  Created by FuXinMing on 2019/5/8.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import <UIKit/UIKit.h>


///App引导页，支持UIImage、NSData格式的gif图片
@interface FMGuidenceViewController : UIViewController

/**
 *  @brief 快速初始化
 *
 *  @param imagesName 图片资源图片名称
 *
 *  @return 实例化
 */
-(id _Nullable )initWithImagesName:(NSArray *_Nullable)imagesName;

/**
 *  @brief 引导页资源图片名称
 */
@property(nonnull,nonatomic,strong) NSArray *imagesName;

/**
 *  @brief 完成按钮图片
 */
@property(nullable,nonatomic,strong) UIImage *doneBtnImage;

/**
 *  @brief 完成按钮偏移
 */
@property(nonatomic,assign) CGPoint doneBtnOffset;

/**
 *  @brief 跳过按钮图片
 */
@property(nullable,nonatomic,strong) UIImage *skipBtnImage;

/**
 *  @brief 跳过按钮偏移
 */
@property(nonatomic,assign) CGPoint skipBtnOffset;

/**
 *  @brief pageControl
 */
@property (nullable,nonatomic,strong) UIPageControl *pageControl;

/**
 *  @brief 消失回调
 */
@property(nullable,nonatomic,copy) void (^dismiss)(void);

/**
 *  @brief 应用第一次启动检查
 *
 *  @return 是否首次启动
 */
+(BOOL)appFirstLaunch;
@end


