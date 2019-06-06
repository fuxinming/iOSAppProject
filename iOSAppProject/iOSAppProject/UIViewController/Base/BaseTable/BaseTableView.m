//
//  BaseTableView.m
//  PCDBank
//
//  Created by FuXinMing on 2019/4/19.
//  Copyright © 2019 DK. All rights reserved.
//

#import "BaseTableView.h"

@interface BaseTableView ()<RETableViewManagerDelegate>

@end
@implementation BaseTableView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.tableView];
        
        _tableManager = [[RETableViewManager alloc] initWithTableView:_tableView];
        _tableManager.delegate = self;
        [self regesterCell:@"EmptyCell" withItem:@"EmptyItem"];
    }
    return self;
}


- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.width, self.height) style:UITableViewStylePlain];
        _tableView.backgroundColor = [UIColor clearColor];
        _tableView.separatorStyle = UITableViewCellEditingStyleNone;
        _tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, CGFLOAT_MIN)];
        if (@available(iOS 11.0, *)) {
            _tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
        }
    }
    return _tableView;
}

#pragma mark - RETableViewManagerDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)sectionIndex{
    return 0.01;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.01;
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
@end
