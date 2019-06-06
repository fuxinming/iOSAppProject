//
//  RootViewAppDelegate.m
//  iOSAppProject
//
//  Created by FuXinMing on 2019/5/8.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import "RootViewAppDelegate.h"
#import "AppDelegate.h"
#import "FMLaunchViewController.h"
#import "RootTabBarViewController.h"
@implementation RootViewAppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
   
    
    
    //启动页
    [self startRootView];
  
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application
{

}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    
}

- (void)application:(UIApplication *)application
didReceiveRemoteNotification:(NSDictionary *)userInfo
fetchCompletionHandler:(void (^)(UIBackgroundFetchResult result))completionHandler;
{
    
}

#pragma mark - 初始化主页

-(void) startRootView{
    WeakSelf(ws);
    AppDelegate *del = (AppDelegate *)[UIApplication sharedApplication].delegate;
    UIWindow *rootWindow = del.window;
    if ([FMGuidenceViewController appFirstLaunch]) {
        //引导页
        FMGuidenceViewController *guidenceVC =[[FMGuidenceViewController alloc]initWithImagesName:@[@"guidence_01.png",@"guidence_02.png",@"guidence_03.png"]];
        guidenceVC.doneBtnImage =[UIImage imageNamed:@"guidence_btn.png"];
        [guidenceVC setDismiss:^{
            [ws initRootViewController];
        }];
        rootWindow.rootViewController = guidenceVC;
        [rootWindow makeKeyAndVisible];
    }else{
        FMLaunchViewController * launchVC = [[FMLaunchViewController alloc] init];
        launchVC.launchDismissed = ^(NSDictionary *param) {
            [ws initRootViewController];
        };
        rootWindow.rootViewController = launchVC;
    }
}


-(void)initRootViewController{
    
    //如果不需要侧边栏效果，则不需要使用PCSideBarController!!!
    
    RootTabBarViewController *tabBarController =[[RootTabBarViewController alloc]init];
    
    UINavigationController *rootNav =[[UINavigationController alloc]initWithRootViewController:tabBarController];
    rootNav.navigationBarHidden = YES;
    
    AppDelegate *appdele =(AppDelegate *)[UIApplication sharedApplication].delegate;
    UIWindow *rootWindow = appdele.window;
    rootWindow.rootViewController =rootNav;
    [rootWindow makeKeyAndVisible];
}
@end
