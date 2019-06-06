//
//  RootTabBarViewController.m
//  iOSAppProject
//
//  Created by FuXinMing on 2019/6/4.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import "RootTabBarViewController.h"
#import "MineViewController.h"
#import "MainViewController.h"
#import "LicaiViewController.h"
#import "CreditCardViewController.h"
#import "LifeViewController.h"

@interface RootTabBarViewController ()
@property(nonatomic,strong) UINavigationController *nav0,*nav1,*nav2,*nav3,*nav4;
@end

@implementation RootTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initViewControllers];
}

-(void)initTabBar{
    [super initTabBar];
    self.tabBarHeight = 53;
    self.bottomHeight = 53;
    self.tabBar.separatorWidth = 0;
    
    //MARK: - 绘制阴影
    self.tabBar.layer.shadowColor = [UIColor grayColor].CGColor;
    self.tabBar.layer.shadowOpacity = 0.2f;
    self.tabBar.layer.shadowRadius = 1;
    self.tabBar.layer.shadowOffset = CGSizeMake(2, -1);
    
    
    //    UIColor *titleColorHL = [UIColor colorWithRed:0.922 green:0.310 blue:0.220 alpha:1.000];
    
    UIColor *titleColorHL = ColorHex(0x4671CB);
    
    FMTabBarItem *item0 = [[FMTabBarItem alloc] initWithTitle:@"首页" image:[UIImage imageNamed:@"导航栏首页icon"] selectedImage:[UIImage imageNamed:@"导航栏首页icon1"]];
    item0.titleInsets =UIEdgeInsetsMake(6, 0, 5, 0);
    item0.titleColorHL =titleColorHL;
    item0.font = [UIFont systemFontOfSize:12];
    
    FMTabBarItem *item1 = [[FMTabBarItem alloc] initWithTitle:@"理财" image:[UIImage imageNamed:@"导航栏理财icon"] selectedImage:[UIImage imageNamed:@"导航栏理财icon1"]];
    item1.titleInsets = UIEdgeInsetsMake(6, 0, 5, 0);
    item1.titleColorHL = titleColorHL;
    item1.font = [UIFont systemFontOfSize:12];
    
    FMTabBarItem *item2 = [[FMTabBarItem alloc] initWithTitle:@"信用卡" image:[UIImage imageNamed:@"导航栏信用卡icon"] selectedImage:[UIImage imageNamed:@"导航栏信用卡1icon"]];
    item2.titleInsets =UIEdgeInsetsMake(6, 0, 5, 0);
    item2.titleColorHL =titleColorHL;
    item2.font = [UIFont systemFontOfSize:12];
    
    FMTabBarItem *item3 = [[FMTabBarItem alloc] initWithTitle:@"生活" image:[UIImage imageNamed:@"导航栏生活icon"] selectedImage:[UIImage imageNamed:@"导航栏生活icon1"]];
    item3.titleInsets =UIEdgeInsetsMake(6, 0, 5, 0);
    item3.titleColorHL =titleColorHL;
    item3.font = [UIFont systemFontOfSize:12];
    
    FMTabBarItem *item4 = [[FMTabBarItem alloc] initWithTitle:@"我的" image:[UIImage imageNamed:@"导航栏我的icon"] selectedImage:[UIImage imageNamed:@"导航栏我的icon1"]];
    item4.titleInsets =UIEdgeInsetsMake(6, 0, 5, 0);
    item4.titleColorHL =titleColorHL;
    item4.font = [UIFont systemFontOfSize:12];
    
    self.tabBar.items =@[item0,item1,item2,item3,item4];
}

/**
 *tips:初始化控制器数组，setSelectedIndex时会修改对应控制器view.frame，所以控制器可以使用自动布局。
 或者在viewDidLoad的初始化子视图的时候去掉底部tabbar的高度
 */
-(void)initViewControllers{
    
    MainViewController *bankVC = [[MainViewController alloc] init];
    bankVC.hideBackBtn = YES;
    self.nav0 = [[UINavigationController alloc] initWithRootViewController:bankVC];
    
    LicaiViewController *inveVC = [[LicaiViewController alloc] init];
    inveVC.hideBackBtn = YES;
    self.nav1 = [[UINavigationController alloc] initWithRootViewController:inveVC];
    
    CreditCardViewController *creditCardVC = [[CreditCardViewController alloc] init];
    creditCardVC.hideBackBtn = YES;
    self.nav2 = [[UINavigationController alloc] initWithRootViewController:creditCardVC];
    
    
    
    LifeViewController *lifePage = [[LifeViewController alloc] init];
    lifePage.hideBackBtn = YES;
    self.nav3 = [[UINavigationController alloc] initWithRootViewController:lifePage];
    
    
    MineViewController *myPage = [[MineViewController alloc] init];
    myPage.hideBackBtn = YES;
    self.delegate = (id)myPage;
    self.nav4 = [[UINavigationController alloc] initWithRootViewController:myPage];
    
    
    self.viewControllers = @[_nav0,_nav1,_nav2,_nav3,_nav4];
    self.selectedIndex=0;
}

//特殊场景代码示例：未登录点击我的版面弹出登录页面，登录完成回调显示我的版面；登录后版面正常切换

/*

- (void)tabBar:(FMTabBar *)tabBar didSelectIndex:(NSUInteger)index{
    
    if (self.viewControllers && self.viewControllers.count >index) {
        if (index==4) {
//            //点击我的版面
//            BOOL loigned =[PCDUtil logined];
//            //            BOOL loigned =YES;
//
//            if(loigned){
//                self.selectedIndex = index;
//            }else{
//                [self.tabBar setSelectedItem:[self.tabBar.items objectAtIndex:self.selectedIndex]];
//
//                //去登录
//                NSDictionary *params = @{@"ShowType":[NSNumber numberWithInt:1]};
//                __weak typeof(self) tempSelf = self;
//                UIViewController *viewController= [[CTMediator sharedInstance] CTMediatorLoginViewController:params CompleteAction:^(BOOL error, id session) {
//                    //
//                    if (error) {
//                        tempSelf.selectedIndex = index;
//                    }
//
//                }];
//                [self.navigationController pushViewController:viewController animated:YES];
//
//            }
        }else{
            self.selectedIndex = index;
        }
    }
}
*/
@end
