//
//  BaseTableViewController.m
//  PCDBank
//
//  Created by FuXinMing on 2019/3/30.
//  Copyright © 2019 DK. All rights reserved.
//

#import "BaseTableViewController.h"

@interface BaseTableViewController ()

@end

@implementation BaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tableView];
    
    _tableManager = [[RETableViewManager alloc] initWithTableView:_tableView];
    _tableManager.delegate = self;
    [self regesterCell:@"EmptyCell" withItem:@"EmptyItem"];
}




#pragma mark - RETableViewManagerDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)sectionIndex{
    return 0.01;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.01;
}


- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight - self.tabBarController.tabBarHeight) style:UITableViewStylePlain];
        _tableView.backgroundColor = [UIColor clearColor];
        _tableView.separatorStyle = UITableViewCellEditingStyleNone;
        _tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, CGFLOAT_MIN)];
        if (@available(iOS 11.0, *)) {
            _tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        } else {
            self.automaticallyAdjustsScrollViewInsets = NO;
        }
    }
    return _tableView;
}

- (RETableViewSection *)section0{
    if (!_section0) {
        _section0 = [RETableViewSection section];
    }
    return _section0;
}

-(void)regesterCell:(NSString *)cellName withItem:(NSString *)itemName{
    _tableManager[itemName] = cellName;
}

- (void)addHeader
{
    WeakSelf(ws);
    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        [ws performSelector:@selector(setupTable) withObject:nil afterDelay:0.01];
        [ws performSelector:@selector(refreshComplete) withObject:nil afterDelay:1];
    }];
}

-(void)setupTable{}

- (void)refreshComplete {
    // 拿到当前的下拉刷新控件，结束刷新状态
    if (self.tableView.mj_header) {
        [self.tableView.mj_header endRefreshing];
    }
  
}
@end
