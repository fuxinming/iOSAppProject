//
//  FMNavBarButtonItem.h
//  FMBaseClass
//
//  Created by FuXinMing on 2019/5/8.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import "FMBarItem.h"

/**
 PCDBarButtonItem样式
 
 - FMNavBarButtonItemStylePlain: 简单
 - FMNavBarButtonItemStyleBack: 返回
 */
typedef NS_ENUM(NSUInteger, FMNavBarButtonItemStyle){
    
    FMNavBarButtonItemStylePlain,
    
    FMNavBarButtonItemStyleBack,
};

@interface FMNavBarButtonItem : FMBarItem

/**
 *  @brief 快速实例化
 *
 *  @param image  图片
 *  @param style  样式，Plain样式下:存在图片，只显示图片；不存在图片显示标题
 *  @param target 动作源对象
 *  @param action 动作
 *
 *  @return 实例化
 */
- (nullable instancetype)initWithImage:(nullable UIImage *)image style:(FMNavBarButtonItemStyle)style target:(nullable id)target action:(nullable SEL)action;
/**
 *  @brief 快速实例化
 *
 *  @param title  标题，默认PCDBarButtonItemPlain样式
 *  @param target 动作源对象
 *  @param action 动作
 *
 *  @return 实例化
 */
- (nullable instancetype)initWithTitle:(nullable NSString *)title target:(nullable id)target action:(nullable SEL)action;
/**
 *  @brief 快速自定制视图实例化
 *
 *  @param customView 自定制视图，左侧视图左侧对齐，右侧视图右侧对齐
 *
 *  @return 实例化
 */
- (nullable instancetype)initWithCustomView:(nullable UIView *)customView;

/**
 *  @brief 样式
 */
@property(nonatomic,assign) FMNavBarButtonItemStyle style;

/**
 *  @brief 自定义视图
 */
@property(nullable, nonatomic,strong) UIView *customView;

/**
 *  @brief 动作
 */
@property(nullable, nonatomic) SEL action;

/**
 *  @brief 动作源
 */
@property(nullable, nonatomic,weak) id target;

/**
 设置UIControl的长度 默认导航栏的宽度除以3再减15
 */
@property(nonatomic ,assign) float buttonWidth;

@end

