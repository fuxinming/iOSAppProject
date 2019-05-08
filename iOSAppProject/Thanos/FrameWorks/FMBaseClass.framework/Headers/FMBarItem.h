//
//  FMBarItem.h
//  FMBaseClass
//
//  Created by FuXinMing on 2019/5/8.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
/**
 绘制边界类型
 
 - FMEdgeStrokeNone: 无
 - FMEdgeStrokeTop: 上边
 - FMEdgeStrokeLeft: 左边
 - FMEdgeStrokeBottom: 下边
 - FMEdgeStrokeRight: 右边
 */
typedef NS_ENUM(NSUInteger, FMEdgeStroke){
    FMEdgeStrokeNone =0,
    FMEdgeStrokeTop =1,
    FMEdgeStrokeLeft =2,
    FMEdgeStrokeBottom =3,
    FMEdgeStrokeRight =4,
};

/**
 *  @brief BarItem数据项
 */
@interface FMBarItem : NSObject
/**
 *  @brief 是否可用，默认YES
 */
@property(nonatomic,assign) BOOL enabled;

/**
 *  @brief 标记，默认0
 */
@property(nonatomic,assign) NSInteger tag;

/**
 *  @brief 标题
 */
@property(nullable,nonatomic,copy) NSString *title;

/**
 *  @brief 自动调节字体以适应宽度，默认NO
 */
@property(nonatomic,assign) BOOL autoFitToWidth;

/**
 *   @brief标题字体，默认[UIFont systemFontOfSize:15.f]
 */
@property(nonnull,nonatomic,strong) UIFont *font;

/**
 *  @brief 标题颜色，默认[UIColor darkGrayColor]
 */
@property(nullable, nonatomic,strong) UIColor *titleColor;

/**
 *  @brief 标题高亮颜色，默认[UIColor blackColor]
 */
@property(nullable, nonatomic,strong) UIColor *titleColorHL;

/**
 *  @brief 图片的尺寸，默认CGSizeZero。如果设置了imageSize，image,imageHL取imageSize值
 */
@property(nonatomic,assign) CGSize imageSize;

/**
 *  @brief 前景图片
 */
@property(nullable, nonatomic,strong) UIImage *image;

/**
 *  @brief 前景高亮图片
 */
@property(nullable, nonatomic,strong) UIImage *imageHL;

/**
 *  @brief 背景图片
 */
@property(nullable, nonatomic,strong) UIImage *backgroundImage;

/**
 *  @brief 背景高亮图片
 */
@property(nullable, nonatomic,strong) UIImage *backgroundImageHL;

/**
 *  @brief 内容填充，默认UIEdgeInsetsZero
 */
@property (nonatomic,assign) UIEdgeInsets contentInsets;

/**
 *  @brief 描边，默认PCEdgeStrokeNone
 */
@property (nonatomic, assign) FMEdgeStroke edgeStroke;

/**
 *   @brief描边颜色，默认[UIColor darkGrayColor]
 */
@property (nonnull,nonatomic, strong) UIColor *strokeColor;

/**
 *  @brief 描边宽度，默认0
 */
@property (nonatomic, assign) CGFloat strokeWidth;

/**
 *  @brief 前景图片填充，默认UIEdgeInsetsZero
 */
@property (nonatomic, assign) UIEdgeInsets imageInsets;

/**
 *  @brief 标题填充，默认UIEdgeInsetsZero
 */
@property (nonatomic, assign) UIEdgeInsets titleInsets;

/**
 *  @brief 自定义数据
 */
@property (nullable,nonatomic, strong) id userInfo;
@end


