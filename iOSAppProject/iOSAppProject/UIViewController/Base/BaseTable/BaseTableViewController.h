//
//  BaseTableViewController.h
//  PCDBank
//
//  Created by FuXinMing on 2019/3/30.
//  Copyright © 2019 DK. All rights reserved.
//

#import "BaseViewController.h"
#import "EmptyCell.h"
#import "RETableViewManager.h"

@interface BaseTableViewController : BaseViewController<RETableViewManagerDelegate>
@property (nonatomic, strong) RETableViewManager *tableManager;
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) RETableViewSection *section0;
- (void)addHeader;
-(void)regesterCell:(NSString *)cellName withItem:(NSString *)itemName;
@end


