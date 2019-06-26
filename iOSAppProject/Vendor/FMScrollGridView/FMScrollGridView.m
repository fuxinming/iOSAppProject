//
//  FMScrollGridView.m
//  iOSAppProject
//
//  Created by FuXinMing on 2019/6/24.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import "FMScrollGridView.h"
typedef NS_ENUM(NSInteger, FMGridOrientation) {
    FMGridOrientationNone = 0,
    FMGridOrientationHorizontal = 1,
    FMGridOrientationVertical = 2,
};

@interface FMScrollGridView (){
    NSMutableArray *separatorViews;
    FMGridOrientation _orientation;
}

@end

@implementation FMScrollGridView
- (id)initWithFrame:(CGRect)frame{
    
    if (self=[super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    
    if (self =[super initWithCoder:aDecoder]) {
        [self setup];
    }
    return self;
}
//参数初始化默认值
-(void)setup{
    
    self.needShowPageControl = YES;
    self.items =nil;
    self.spaceHorizontal =0;
    self.spaceVertical =0;
    self.numberHorizontal =0;
    self.numberVertical =0;
    self.itemSize =CGSizeZero;
    self.inset =UIEdgeInsetsZero;
    self.hSeparatorWdith =1/[[UIScreen mainScreen] scale];
    self.hSeparatorColor =[UIColor colorWithWhite:0.831 alpha:1.000];
    self.vSeparatorWdith =1/[[UIScreen mainScreen] scale];
    self.vSeparatorColor =[UIColor colorWithWhite:0.831 alpha:1.000];
    self.backgroundColor =[UIColor clearColor];
    if (!self.pageControl) {
        self.pageControl =[[UIPageControl alloc] initWithFrame:CGRectZero];
        self.pageControl.numberOfPages =0;
        self.pageControl.userInteractionEnabled=NO;
        self.pageControl.currentPageIndicatorTintColor =[UIColor darkGrayColor];
        self.pageControl.pageIndicatorTintColor =[UIColor lightGrayColor];
    }
}

-(void)layoutSubviews{
    
    _orientation =FMGridOrientationNone;
    
    if (self.numberHorizontal >0 && self.numberVertical ==0) {
        
        _orientation =FMGridOrientationVertical;
    }
    else if (self.numberHorizontal >0 && self.numberVertical >0){
        
        _orientation =FMGridOrientationHorizontal;
    }
    
    if (self.itemViews ==nil) {
        
        [self loadItemViews];
        
        [self addGridBoundary];
    }
    
    [super layoutSubviews];
}

-(void)loadItemViews{
    
    if (self.items && self.items.count>0) {
        
        NSInteger count =[self.items count];
        //清空数组
        self.itemViews =[[NSMutableArray alloc] initWithCapacity:count];
        
        for (NSInteger i=0; i<count; i++) {
            FMScrollGridItem *item =[self.items objectAtIndex:i];
            FMScrollGridItemView *itemView =[[FMScrollGridItemView alloc] initWithItem:item];
            itemView.index =i;
            itemView.frame =CGRectMake(0, 0, self.itemSize.width, self.itemSize.height);
            itemView.center =[self pointInGridWithIndex:i];
            [self addSubview:itemView];
            //添加到self.itemViews数组
            [self.itemViews addObject:itemView];
        }
        [self autoContentSize];
    }
}

//添加网格边界
-(void)addGridBoundary{
    
    if (separatorViews && separatorViews.count>0) {
        [separatorViews makeObjectsPerformSelector:@selector(removeFromSuperview) withObject:nil];
    }
    separatorViews =[[NSMutableArray alloc]init];
    
    if (_orientation == FMGridOrientationVertical) {
        for (NSUInteger i=1; i<self.numberHorizontal; i++) {
            //竖线
            UIView *lineView =[[UIView alloc]initWithFrame:CGRectMake(i*self.itemSize.width, 0, self.vSeparatorWdith, self.contentSize.height)];
            lineView.backgroundColor = self.vSeparatorColor;
            [self addSubview:lineView];
            [separatorViews addObject:lineView];
        }
        NSUInteger row =(self.items.count/self.numberHorizontal)+1;
        for (NSUInteger i=1; i<row; i++) {
            //横线
            UIView *lineView = [[UIView alloc] initWithFrame:CGRectMake(0, i*(self.itemSize.height+self.spaceVertical), self.frame.size.width, self.hSeparatorWdith)];
            lineView.backgroundColor = self.hSeparatorColor;
            [self addSubview:lineView];
            [separatorViews addObject:lineView];
        }
    }
    else if (_orientation ==FMGridOrientationHorizontal){
        for (NSUInteger i=1; i<self.numberVertical; i++) {
            //横线
            UIView *lineView = [[UIView alloc] initWithFrame:CGRectMake(0, i*(self.itemSize.height+self.spaceVertical), self.contentSize.width, self.hSeparatorWdith)];
            lineView.backgroundColor =self.hSeparatorColor;
            [self addSubview:lineView];
            [separatorViews addObject:lineView];
        }
        NSInteger page =self.items.count/(self.numberVertical*self.numberHorizontal)+(self.items.count%(self.numberVertical*self.numberHorizontal)==0?0:1);
        NSUInteger row =page*self.numberHorizontal-1;
        for (NSUInteger i=1; i<row+1; i++) {
            //竖线
            UIView *lineView = [[UIView alloc] initWithFrame:CGRectMake(i*self.itemSize.width, 0, self.vSeparatorWdith, self.frame.size.height)];
            lineView.backgroundColor =self.vSeparatorColor;
            [self addSubview:lineView];
            [separatorViews addObject:lineView];
        }
    }
}

-(void)reloadData{
    
    [self.itemViews makeObjectsPerformSelector:@selector(removeFromSuperview) withObject:nil];
    
    self.itemViews =nil;
    
    [self setNeedsLayout];
    [self setNeedsDisplay];
}

-(void)autoContentSize{
    
    if (_orientation ==FMGridOrientationVertical) {
        
        NSInteger count =[self.itemViews count];
        NSInteger numberOfColumn =(count/self.numberHorizontal)+ (count%self.numberHorizontal>0 ?1:0);
        CGFloat height =self.inset.top +numberOfColumn *self.itemSize.height +(numberOfColumn -1) *self.spaceVertical;
        self.contentSize =CGSizeMake(self.frame.size.width, height);
    }
    else if (_orientation ==FMGridOrientationHorizontal){
        NSInteger count =[self.itemViews count];
        NSInteger countPage =count/(self.numberVertical *self.numberHorizontal) +(count%(self.numberVertical *self.numberHorizontal) >0 ? 1:0);
        self.contentSize =CGSizeMake(self.frame.size.width *countPage , 0);
        if (self.superview==nil) {
            return;
        }
        if (self.needShowPageControl) {
            if (countPage>1) {
                if (![self.pageControl isDescendantOfView:self.superview])
                    [self.superview addSubview:self.pageControl];
                CGRect realRect =CGRectMake(CGRectGetMinX(self.frame), CGRectGetMaxY(self.frame)-10, CGRectGetWidth(self.frame), 40.0f);
                self.pageControl.frame =realRect;
                self.pageControl.numberOfPages =countPage;
            }else{
                if ([self.pageControl isDescendantOfView:self.superview])
                    [self.pageControl removeFromSuperview];
            }
        }
    }
}

-(CGPoint)pointInGridWithIndex:(NSInteger)index{
    
    CGPoint point =CGPointZero;
    CGFloat width =self.frame.size.width -self.inset.left -self.inset.right;
    if (_orientation ==FMGridOrientationHorizontal) {
        NSInteger page =index/(self.numberVertical *self.numberHorizontal);
        NSInteger rowPage =(index - page *self.numberHorizontal *self.numberVertical) /self.numberHorizontal;
        NSInteger columnPage =(index -page *self.numberHorizontal *self.numberVertical) %self.numberHorizontal;
        CGFloat x =self.frame.size.width *page+ self.inset.left +(width/self.numberHorizontal)*(columnPage +1.0f/2);
        CGFloat y =self.inset.top +self.itemSize.height *(rowPage +1.0f/2) +self.spaceVertical *rowPage;
        point =CGPointMake(x, y);
    }
    else if (_orientation ==FMGridOrientationVertical){
        NSInteger row =index/self.numberHorizontal;
        NSInteger column =index %self.numberHorizontal;
        CGFloat x =self.inset.left +(width/self.numberHorizontal)*(column +1.0f/2);
        CGFloat y =self.inset.top +self.itemSize.height *(row +1.0f/2) +self.spaceVertical *row;
        point =CGPointMake(x, y);
    }
    return point;
}
@end
