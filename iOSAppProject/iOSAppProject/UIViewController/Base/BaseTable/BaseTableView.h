//
//  BaseTableView.h
//  PCDBank
//
//  Created by FuXinMing on 2019/4/19.
//  Copyright © 2019 DK. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RETableViewManager.h"
#import "EmptyCell.h"
NS_ASSUME_NONNULL_BEGIN

@interface BaseTableView : UIView
@property (nonatomic, strong) RETableViewManager *tableManager;
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) RETableViewSection *section0;

-(void)regesterCell:(NSString *)cellName withItem:(NSString *)itemName;
@end

NS_ASSUME_NONNULL_END
