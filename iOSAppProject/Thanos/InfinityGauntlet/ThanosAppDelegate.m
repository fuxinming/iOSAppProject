//
//  ThanosAppDelegate.m
//  iOSAppProject
//
//  Created by FuXinMing on 2019/5/8.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import "ThanosAppDelegate.h"

@implementation ThanosAppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSLog(@"%@ Thanos Timeline", NSStringFromSelector(_cmd));

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    NSLog(@"%@ Thanos Timeline", NSStringFromSelector(_cmd));
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    NSLog(@"%@ Thanos Timeline", NSStringFromSelector(_cmd));
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    NSLog(@"%@ Thanos Timeline", NSStringFromSelector(_cmd));
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    NSLog(@"%@ Thanos Timeline", NSStringFromSelector(_cmd));
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    NSLog(@"%@ Thanos Timeline", NSStringFromSelector(_cmd));
}

- (void)application:(UIApplication *)application
didReceiveRemoteNotification:(NSDictionary *)userInfo
fetchCompletionHandler:(void (^)(UIBackgroundFetchResult result))completionHandler;
{
    NSLog(@"%@ Thanos Timeline", NSStringFromSelector(_cmd));
}
@end
