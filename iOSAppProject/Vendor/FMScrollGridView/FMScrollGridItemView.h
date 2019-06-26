//
//  FMScrollGridItemView.h
//  iOSAppProject
//
//  Created by FuXinMing on 2019/6/25.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FMScrollGridItem.h"


@interface FMScrollGridItemView : UIControl
/**
 *  @brief 按钮数据项
 */
@property(nonatomic,strong) FMScrollGridItem *item;

/**
 *  @brief 图片视图
 */
@property(nonatomic,strong) UIButton *imageBtn;

/**
 *  @brief 标题视图
 */
@property(nonatomic,strong) UILabel *titleLabel;

/**
 *  @brief 背景图片视图
 */
@property(nonatomic,strong) UIImageView *backgroundImageView;

/**
 *  @brief 标识位
 */
@property(nonatomic) NSInteger index;

/**
 *  @brief 按钮视图初始化
 *
 *  @param item 按钮数据项
 *
 *  @return PCDScrollGridItemView实例
 */
-(instancetype)initWithItem:(FMScrollGridItem *)item;

/**
 *  @brief 初始化子视图，允许子类复写
 */
-(void)initContentView;

/**
 *  @brief 有效区域
 *
 *  @return 有效区域
 */
-(CGRect)vaildRect;
@end


