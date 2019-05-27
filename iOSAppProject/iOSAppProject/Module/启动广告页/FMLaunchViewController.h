//
//  FMLaunchViewController.h
//  iOSAppProject
//
//  Created by FuXinMing on 2019/5/23.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface FMLaunchViewController : UIViewController
@property (nonatomic,copy)void (^launchDismissed)(NSDictionary *param);
@end


