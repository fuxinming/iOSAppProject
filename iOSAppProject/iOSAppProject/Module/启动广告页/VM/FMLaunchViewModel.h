//
//  FMLaunchViewModel.h
//  iOSAppProject
//
//  Created by FuXinMing on 2019/5/24.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FMLaunchDo.h"


@interface FMLaunchViewModel : NSObject
/**
 *  @brief 单例化
 *
 *  @return FMLaunchViewModel
 */
+(FMLaunchViewModel *)shareInstance;

@property (nonatomic,strong)NSMutableArray *dataArr;


/**
 * 启动图片下载
 *
 */
-(void)loadLaunchImg;

/**
 * 使用缓存数据加载启动图
 */
-(FMLaunchDo *)loadCacheLaunchImg;
@end


