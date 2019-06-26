//
//  MainViewController.m
//  iOSAppProject
//
//  Created by FuXinMing on 2019/6/4.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import "MainViewController.h"
#import "FMScrollGridView.h"

#import "MainPageHeadCell.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.frame = CGRectMake(0, 0, ScreenWidth, ScreenHeight - self.tabBarController.tabBarHeight);
    [self regesterCell:@"MainPageHeadCell" withItem:@"MainPageHeadItem"];
    [self.view bringSubviewToFront:self.navigationBar];
    [self setupTable];
}

-(void)setupTable{
    WeakSelf(ws);
    self.section0 = [RETableViewSection section];
    MainPageHeadItem *headCell = [[MainPageHeadItem alloc]init];
    headCell.target = self;
    [self.section0 addItem:headCell];
    
    [self.tableManager replaceSectionsWithSectionsFromArray:@[self.section0]];
    [self.tableView reloadData];
    
}
-(void)initNavigationBar{
    [super initNavigationBar];
    self.navigationBar.backgroundColor =[UIColor clearColor];
    self.navigationBar.separatorColor =[UIColor clearColor];
}


#pragma mark -菜单点击事件
- (void)menuItemPressed:(FMScrollGridItem *)item{
    
}
@end
