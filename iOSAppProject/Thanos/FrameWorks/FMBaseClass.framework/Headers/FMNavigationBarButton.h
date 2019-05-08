//
//  FMNavigationBarButton.h
//  FMBaseClass
//
//  Created by FuXinMing on 2019/5/8.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FMNavBarButtonItem.h"

@interface FMNavigationBarButton : UIControl
@property(nullable,nonatomic,strong) FMNavBarButtonItem *barButtonItem;

@property(nonnull,nonatomic,strong) UIImageView *imageView;

@property(nonnull,nonatomic,strong) UILabel *titleLabel;

@property(nonatomic,assign) BOOL isStartFromLeft;
@end


