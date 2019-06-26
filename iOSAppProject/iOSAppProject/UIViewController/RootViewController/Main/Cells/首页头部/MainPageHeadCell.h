//
//  InvestGridMenuCell.h
//  PCDBank
//
//  Created by FuXinMing on 2019/3/30.
//  Copyright © 2019 DK. All rights reserved.
//

#import "RETableViewCell.h"
#import "RETableViewItem.h"

@interface MainPageHeadItem : RETableViewItem
@property (nonatomic,strong)NSArray *headArray;
@property (nonatomic,strong)NSArray *menuArray;
@end


@interface MainPageHeadCell : RETableViewCell
@property (strong, readwrite, nonatomic) MainPageHeadItem *item;
@end


