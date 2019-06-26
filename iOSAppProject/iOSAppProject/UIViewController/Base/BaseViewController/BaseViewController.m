//
//  BaseViewController.m
//  iOSAppProject
//
//  Created by FuXinMing on 2019/5/9.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import "BaseViewController.h"

@implementation BaseViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = ColorHex(0xf9f9f9);

    [self initNavigatBarButton];
}


#pragma mark - 自定义返回按钮样式
-(FMNavBarButtonItem *)backBarButtonItem{
    
    if (self.hideBackBtn) {
        return nil;
    }
    UIImage *backImage =[UIImage imageNamed:@"backWhite"];
    FMNavBarButtonItem *backBarButtonItem =[[FMNavBarButtonItem alloc]initWithImage:backImage style:FMNavBarButtonItemStylePlain target:self action:@selector(backBarButtonPressed:)];
    backBarButtonItem.imageInsets = UIEdgeInsetsMake(0, 5, 0, 0);
    return backBarButtonItem;
}
#pragma mark -定制导航条
-(void)initNavigationBar
{
    [super initNavigationBar];
    
    FMBarItem *titleBarItem = [[FMBarItem alloc] init];
    titleBarItem.titleColor = [UIColor blackColor];
    titleBarItem.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
    
    self.navigationBar.titleItem = titleBarItem;
    
    self.navigationBar.backgroundImage = nil;
    self.navigationBar.backgroundColor = [UIColor whiteColor];
    
    self.navigationBar.separatorHeight = 0.5;
    self.navigationBar.separatorColor =[UIColor RGBCOLOR:224 g:224 b:224 a:0.6];
}

#pragma mark -定制导航条左右按钮
-(void)initNavigatBarButton{
    
    if (self.hideBackBtn) {
        UIView *leftBarView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 35, 30)];
        leftBarView.userInteractionEnabled = YES;
        UIButton *lbutton1 = [[UIButton alloc] initWithFrame:CGRectMake(5, 5, 20, 20)];
        [lbutton1 setBackgroundImage:[UIImage imageNamed:@"扫一扫"] forState:UIControlStateNormal];
        [lbutton1 addTarget:self action:@selector(leftButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        [leftBarView addSubview:lbutton1];
        FMNavBarButtonItem *leftBarButtonItem = [[FMNavBarButtonItem alloc]  initWithCustomView:leftBarView];
        self.navigationBar.leftBarButtonItem = leftBarButtonItem;
        
        UIView *rightBarView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 70, 30)];
        rightBarView.userInteractionEnabled = YES;
        UIButton *button1 = [[UIButton alloc] initWithFrame:CGRectMake(5, 5, 20, 20)];
        [button1 setBackgroundImage:[UIImage imageNamed:@"客服"] forState:UIControlStateNormal];
        [button1 addTarget:self action:@selector(rightButton1Click:) forControlEvents:UIControlEventTouchUpInside];
        [rightBarView addSubview:button1];
        
        UIButton *button2 = [[UIButton alloc] initWithFrame:CGRectMake(40, 5, 20, 20)];
        [button2 setBackgroundImage:[UIImage imageNamed:@"消息"] forState:UIControlStateNormal];
        [button2 addTarget:self action:@selector(rightButton2Click:) forControlEvents:UIControlEventTouchUpInside];
        [rightBarView addSubview:button2];
        
        FMNavBarButtonItem *rightBarButtonItem = [[FMNavBarButtonItem alloc]  initWithCustomView:rightBarView];
        self.navigationBar.rightBarButtonItem = rightBarButtonItem;
        
        
    }
    
    
}

#pragma mark -导航栏左右按钮事件
-(void)leftButtonClick:(id)sender
{
    //
//    UIViewController* viewController= [[CTMediator sharedInstance] CTMediatorScanTarget:nil];
//    self.tabBarController.hidesBottomBarWhenPushed = YES;
//    [self.tabBarController.navigationController pushViewController:viewController animated:YES];
}

-(void)rightButton1Click:(id)sender
{
    
//    TestFunctionViewController *testFunction = [[TestFunctionViewController alloc] initWithNibName:@"TestFunctionViewController" bundle:nil];
//    self.tabBarController.hidesBottomBarWhenPushed = YES;
//    [self.tabBarController.navigationController pushViewController:testFunction animated:YES];
//    NSLog(@"rightButton1Click");
}
-(void)rightButton2Click:(id)sender
{
    NSLog(@"rightButton2Click");
    
    
//    MessageListViewController *messageListCtrl = [[MessageListViewController alloc] init];
//    self.tabBarController.hidesBottomBarWhenPushed = YES;
//    [self.tabBarController.navigationController pushViewController:messageListCtrl animated:YES];
    
}
@end
