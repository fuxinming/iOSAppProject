//
//  FMSideBarAnimation.h
//  FMBaseClass
//
//  Created by FuXinMing on 2019/5/8.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**
 侧滑样式
 
 - SideBarTransitionLinear: 线性侧滑动画
 - SideBarTransitionShrink: 线性缩放侧滑动画
 - SideBarTransitionRotation: 线性缩放侧滑动画
 - SideBarTransitionDoor: 旋转缩放侧滑动画
 */
typedef NS_ENUM(NSUInteger,SideBarTransitionStyle){
    SideBarTransitionLinear =0,
    SideBarTransitionShrink =1,
    SideBarTransitionRotation =2,
    SideBarTransitionDoor =3,
};

/**
 vc的位置
 
 - SideBarControllerMiddle: 中间
 - SideBarControllerLeft: 左侧
 - SideBarControllerRight: 右侧
 */
typedef NS_ENUM(NSUInteger, SideBarControllerLocation){
    SideBarControllerMiddle =0,
    SideBarControllerLeft =1,
    SideBarControllerRight =2,
};

/**
 *  侧边控制器动画处理
 */
@interface FMSideBarAnimation : NSObject
/**
 *  执行动画
 *
 *  @param middleView 中间视图
 *  @param sideView   侧边视图
 *  @param location   侧边动画方向
 *  @param style      动画样式
 *  @param offset     偏移量
 *  @param duration   动画时间
 *  @param sideWith     侧边宽度最大值
 *  @param completion 完成回调
 */
+(void)doAnimation:(UIView *)middleView sideView:(UIView *)sideView fromSide:(SideBarControllerLocation)location animationStyle:(SideBarTransitionStyle)style offset:(CGFloat)offset duration:(NSTimeInterval)duration maxSideWidth:(CGFloat)sideWith completion:(void (^)(BOOL finished))completion;

/**
 *  @brief 设置锚点，并改变中心点。
 *
 *  @param view        指定视图
 *  @param anchorPoint 锚点
 */
+(void)setView:(UIView *)view anchorPoint:(CGPoint)anchorPoint;
@end


