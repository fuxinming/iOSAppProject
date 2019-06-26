//
//  FMScrollGridItemView.m
//  iOSAppProject
//
//  Created by FuXinMing on 2019/6/25.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import "FMScrollGridItemView.h"

@implementation FMScrollGridItemView

-(instancetype)initWithItem:(FMScrollGridItem *)item{
    
    if (self=[super initWithFrame:CGRectZero]) {
        
        _item = item;
        
        [self addTarget:self action:@selector(itemViewPressed:) forControlEvents:UIControlEventTouchUpInside];
        
        [self initContentView];
    }
    return self;
}

-(void)initContentView{
    //背景图片
    if (self.backgroundImageView ==nil) {
        self.backgroundImageView =[[UIImageView alloc]init];
        self.backgroundImageView.backgroundColor =[UIColor clearColor];
    }
    if (![self.backgroundImageView isDescendantOfView:self]) {
        [self addSubview:self.backgroundImageView];
    }
    //图片按钮
    if (self.imageBtn==nil) {
        if (self.item.imageBtn) {
            self.imageBtn =self.item.imageBtn;
        }else{
            self.imageBtn =[UIButton buttonWithType:UIButtonTypeCustom];
        }
        [self.imageBtn addTarget:self action:@selector(itemViewPressed:) forControlEvents:UIControlEventTouchUpInside];
        self.imageBtn.tag = self.item.tag;
    }
    if (![self.imageBtn isDescendantOfView:self]) {
        [self addSubview:self.imageBtn];
    }
    //文本label
    if (self.titleLabel ==nil) {
        if (self.item.titleLabel) {
            self.titleLabel =self.item.titleLabel;
        }else{
            self.titleLabel =[[UILabel alloc]initWithFrame:CGRectZero];
            self.titleLabel.font =[UIFont systemFontOfSize:14.0f];
            self.titleLabel.textColor =[UIColor darkGrayColor];
        }
    }
#ifdef UITextAlignmentCenter
    self.titleLabel.textAlignment =UITextAlignmentCenter;
#else
    self.titleLabel.textAlignment =NSTextAlignmentCenter;
#endif
    self.titleLabel.backgroundColor =[UIColor clearColor];
    if (![self.titleLabel isDescendantOfView:self]) {
        [self addSubview:self.titleLabel];
    }
    //是否存在自定义子视图
    if (self.item.customView) {
        if (![self.item.customView isDescendantOfView:self]) {
            [self addSubview:self.item.customView];
        }
    }
    self.backgroundColor =self.item.backgroundColor?:[UIColor clearColor];
}

-(void)layoutSubviews{
    
    [super layoutSubviews];
    
    CGFloat imageWidth = self.item.imageSize.width;
    CGFloat imageHeight = self.item.imageSize.height;
    
    CGFloat magnifying = 0.4f;
    if (self.selected) {
        //选中放大尺寸
        imageWidth *= 1+magnifying;
        imageHeight *= 1+magnifying;
    }
    //确定子视图的位置
    self.backgroundImageView.frame =self.bounds;
    self.imageBtn.frame = CGRectMake((CGRectGetWidth(self.frame)-imageWidth)/2+self.item.contentOffset.x,( CGRectGetWidth(self.frame)-imageHeight-self.item.titleInterval-21.0f)/2+self.item.contentOffset.y, imageWidth, imageHeight);
    self.titleLabel.frame =CGRectMake(self.item.contentOffset.x, CGRectGetMaxY(self.imageBtn.frame)+self.item.titleInterval, CGRectGetWidth(self.frame)-self.item.contentOffset.x, 21.0f);
    
    if (self.item.title) {
        self.titleLabel.text =self.item.title;
    }
    if (self.item.image) {
        [self.imageBtn setBackgroundImage:self.item.image forState:UIControlStateNormal];
    }
    self.backgroundImageView.image =self.self.item.backgroundImage;
}

-(void)itemViewPressed:(id)sender{
    if (!self.imageBtn.userInteractionEnabled) {
        return;
    }
    if (self.item.target !=nil && self.item.action !=nil && [self.item.target respondsToSelector:self.item.action]) {
        IMP imp = [self.item.target methodForSelector:self.item.action];
        void (*performSelector)(id, SEL, id) = (void *)imp;
        performSelector(self.item.target, self.item.action,self.item);
    }
}

#pragma mark -setter

-(void)setItem:(FMScrollGridItem *)item{
    _item = item;
    [self setNeedsLayout];
}

-(CGRect)vaildRect{
    
    CGFloat height = self.titleLabel.frame.origin.y + self.titleLabel.frame.size.height -self.imageBtn.frame.origin.y;
    CGFloat width =MIN(self.imageBtn.frame.size.width, self.titleLabel.frame.size.width);
    
    return CGRectMake((self.frame.size.width -width)/2, (self.frame.size.height -height)/2, width, height);
}

@end
