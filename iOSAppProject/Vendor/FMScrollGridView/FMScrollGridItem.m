//
//  FMScrollGridItem.m
//  iOSAppProject
//
//  Created by FuXinMing on 2019/6/24.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import "FMScrollGridItem.h"


@implementation FMScrollGridItem
-(id)init{
    if (self=[super init]) {
        _titleInterval =6.0f;
        _isEditable =NO;
        _isRemoveable =NO;
        _contentOffset =CGPointZero;
        _imageSize =CGSizeMake(35, 35);
        _backgroundColor =[UIColor clearColor];
    }
    return self;
}

+(nonnull instancetype)itemWithTitle:(nullable NSString *)title image:(nullable UIImage *)image size:(CGSize)imageSize editable:(BOOL)isEditable removeable:(BOOL)isRemoveable userInfo:(nullable id)userInfo{
    
    FMScrollGridItem *item =[[FMScrollGridItem alloc]init];
    item.title =title;
    item.image =image;
    item.imageSize =imageSize;
    item.isEditable =isEditable;
    item.isRemoveable =isRemoveable;
    item.userInfo =userInfo;
    
    return item;
}

+(nonnull instancetype)itemWithTitleLabel:(nullable UILabel *)titleLable imageBtn:(nullable UIButton *)imageBtn size:(CGSize)imageSize editable:(BOOL)isEditable removeable:(BOOL)isRemoveable userInfo:(nullable id)userInfo{
    
    FMScrollGridItem *item =[[FMScrollGridItem alloc]init];
    item.titleLabel =titleLable;
    item.imageBtn =imageBtn;
    item.imageSize =imageSize;
    item.isEditable =isEditable;
    item.isRemoveable =isRemoveable;
    item.userInfo =userInfo;
    
    return item;
}

@end
