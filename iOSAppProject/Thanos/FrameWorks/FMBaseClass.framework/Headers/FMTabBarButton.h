//
//  FMTabBarButton.h
//  FMBaseClass
//
//  Created by FuXinMing on 2019/5/8.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FMTabBarItem.h"


@interface FMTabBarButton : UIControl
@property(nonatomic,strong) FMTabBarItem *tabBarItem;

@property(nonatomic,strong) UIImageView *bgView;

@property(nonatomic,strong) UIImageView *imageView;

@property(nonatomic,strong) UILabel *titleLabel;

@property(nonatomic,strong) UIButton *badgeView;
@end


