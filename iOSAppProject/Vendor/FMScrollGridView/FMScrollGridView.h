//
//  FMScrollGridView.h
//  iOSAppProject
//
//  Created by FuXinMing on 2019/6/24.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FMScrollGridItem.h"
#import "FMScrollGridItemView.h"
/**
 *  @brief 网格菜单视图，横向、竖向2种样式
 *  numberVertical=0则为竖向滑动样式
 *  numberVertical>0则为横向滑动样式
 */
@interface FMScrollGridView : UIScrollView
/**
 *  @brief 横向的数量，默认为0
 */
@property(nonatomic, assign)NSInteger numberHorizontal;

/**
 *  @brief 竖向的数量，默认为0
 */
@property(nonatomic, assign)NSInteger numberVertical;

/**
 *  @brief 视图内填充
 */
@property (nonatomic, assign) UIEdgeInsets inset;

/**
 *  @brief 每行的间隔，默认为0
 */
@property (nonatomic,assign) CGFloat spaceVertical;

/**
 *  @brief 每列的间隔，默认为0
 */
@property (nonatomic,assign) CGFloat spaceHorizontal;

/**
 *  @brief itemView的大小
 */
@property (nonatomic,assign) CGSize itemSize;

/**
 *  @brief 单元格视图数据项
 */
@property (nullable,nonatomic,strong) NSArray <FMScrollGridItem*>*items;

/**
 *  @brief 单元格视图数组
 */
@property (nullable,nonatomic,strong) NSMutableArray *itemViews;

/**
 *  @brief 页数控制
 */
@property (nullable,nonatomic,strong) UIPageControl *pageControl;

/**
 *  @brief 是否需要显示页面控制小点点  默认YES
 */
@property(nonatomic,assign) BOOL needShowPageControl;

/**
 *  @brief 横向分割线宽度，默认1 pixel: 1/[[UIScreen mainScreen] scale]
 */
@property(nonatomic,assign) CGFloat hSeparatorWdith;

/**
 *  @brief 横向分割线颜色
 */
@property(nullable,nonatomic,strong) UIColor *hSeparatorColor;

/**
 *  @brief  竖向分割线宽度，默认1 pixel: 1/[[UIScreen mainScreen] scale]
 */
@property(nonatomic,assign) CGFloat vSeparatorWdith;

/**
 *  @brief 竖向分割线
 */
@property(nullable,nonatomic,strong) UIColor *vSeparatorColor;

/**
 *  重新加载
 */
-(void)reloadData;

/**
 *  调整contentsize
 */
-(void)autoContentSize;

/**
 *  根据index 获取坐标点
 *
 *  @param index 待获取的item的标识位
 *
 *  @return 位置CGPoint
 */
-(CGPoint)pointInGridWithIndex:(NSInteger)index;
@end


