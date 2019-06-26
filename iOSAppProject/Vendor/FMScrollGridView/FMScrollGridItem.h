//
//  FMScrollGridItem.h
//  iOSAppProject
//
//  Created by FuXinMing on 2019/6/24.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface FMScrollGridItem : NSObject
/**
 *  @brief 动作
 */
@property(nullable,nonatomic)SEL action;
/**
 *  @brief 触发动作事件源对象
 */
@property(nullable,nonatomic, weak) id target;
/**
 *  @brief 标识位
 */
@property(nonatomic, assign) NSInteger tag;
/**
 *  @brief 标题
 */
@property(nullable,nonatomic, copy) NSString *title;
/**
 *  @brief 图片
 */
@property(nullable,nonatomic, strong) UIImage *image;
/**
 *  @brief 自定义数据，一般为菜单的数据项
 */
@property(nullable,nonatomic, strong) id userInfo;
/**
 *  @brief 是否可编辑，默认NO
 */
@property(nonatomic, setter = setEditable:) BOOL isEditable;
/**
 *  @brief 是否可删除，默认NO
 */
@property(nonatomic, setter = setRemoveable:)BOOL isRemoveable;
/**
 *  @brief 图片大小，默认CGSizeMake(35,35)
 */
@property(nonatomic, assign) CGSize imageSize;
/**
 *  @brief 图文位置偏移，默认CGPointZero
 */
@property(nonatomic, assign) CGPoint contentOffset;
/**
 *  @brief 图文间隔，默认6.0f;
 */
@property (nonatomic,assign) CGFloat titleInterval;
/**
 *  @brief 菜单图片按钮，除frame外可高度自定制
 */
@property(nullable,nonatomic,strong) UIButton *imageBtn;
/**
 *  @brief 标题label，除frame外可高度自定制
 */
@property(nullable,nonatomic,strong) UILabel *titleLabel;
/**
 *  @brief 删除按钮，可高度自定制
 */
@property(nullable,nonatomic,strong) UIButton *deleteBtn;
/**
 *  @brief 背景图片
 */
@property(nullable,nonatomic,strong) UIImage *backgroundImage;
/**
 *  @brief 背景颜色，默认[UIColor clearColor]
 */
@property(nullable,nonatomic,strong) UIColor *backgroundColor;
/**
 *  @brief 自定义子视图
 */
@property(nullable,nonatomic,strong) UIView *customView;

/**
 *  @brief 构造PCDScrollGridItem，内部默认相关字体，颜色等。
 *
 *  @param title        标题
 *  @param image       图片
 *  @param imageSize    图片大小
 *  @param isEditable   是否可编辑
 *  @param isRemoveable 是否可删除
 *  @param userInfo     自定义数据
 *
 *  @return PCDScrollGridItem
 */
+(nonnull instancetype)itemWithTitle:(nullable NSString *)title image:(nullable UIImage *)image size:(CGSize)imageSize editable:(BOOL)isEditable removeable:(BOOL)isRemoveable userInfo:(nullable id)userInfo;

/**
 *  @brief 构造PCDScrollGridItem，可通过暴露的视图高度自定义
 *
 *  @param titleLable   文本label
 *  @param imageBtn     图片按钮
 *  @param imageSize    图片大小
 *  @param isEditable   是否可编辑
 *  @param isRemoveable 是否可删除
 *  @param userInfo     自定义数据
 *
 *  @return PCDScrollGridItem
 */
+(nonnull instancetype)itemWithTitleLabel:(nullable UILabel *)titleLable imageBtn:(nullable UIButton *)imageBtn size:(CGSize)imageSize editable:(BOOL)isEditable removeable:(BOOL)isRemoveable userInfo:(nullable id)userInfo;

@end


