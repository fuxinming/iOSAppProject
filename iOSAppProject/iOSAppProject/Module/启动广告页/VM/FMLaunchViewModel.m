//
//  FMLaunchViewModel.m
//  iOSAppProject
//
//  Created by FuXinMing on 2019/5/24.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import "FMLaunchViewModel.h"

@implementation FMLaunchViewModel
+(FMLaunchViewModel *)shareInstance{
    static FMLaunchViewModel *model =nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        model =[[FMLaunchViewModel alloc]init];
    });
    
    return model;
}

#pragma mark - 启动图片
-(void)loadLaunchImg {
    NSString *keyStr = [NSString stringWithFormat:@"%@launch",[[NSDate date] stringFromFormat:yyyyMMdd]];
    NSString *dataString = UserDefaultObjectForKey(keyStr);
    if (ISEmptyStr(dataString)) {
        //请求数据
        [self sendLaunchImgRequest];
    }
    
}

-(FMLaunchDo *)loadCacheLaunchImg {
    
    return [self loadCacheLaunchImgData];
}

-(FMLaunchDo *)loadCacheLaunchImgData {
    NSString *url = Server_Host;
    NSMutableDictionary *param = [NetWorkUtil getPublicParams];
    [param setObject:JHNewsAppkey forKey:@"key"];
    [param setObject:@"top" forKey:@"type"];
    id json = [NetWorkUtil httpCacheForURL:url parameters:param];
    
    if (json) {
        [self phraseData:json];
    }else{
//        NSString *path = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"launchImg.json"];
//        response = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:NULL];
    }
    
    
    return nil;
}

//MARK: - 启动图片请求
-(void)sendLaunchImgRequest {
    WeakSelf(ws);
    NSString *url = Server_Host;
    NSMutableDictionary *param = [NetWorkUtil getPublicParams];
    [param setObject:JHNewsAppkey forKey:@"key"];
    [param setObject:@"top" forKey:@"type"];
    [NetWorkUtil POST:url parameters:param responseCache:^(id responseCache) {
        
    } success:^(id json) {
        [ws phraseData:json];
        NSString *keyStr = [NSString stringWithFormat:@"%@launch",[[NSDate date] stringFromFormat:yyyyMMdd]];
        UserDefaultSetObjectForKey(keyStr, keyStr);
    } failure:^(NSError *error) {
        
    }];
    
}

-(void)phraseData:(id)json{
    NSDictionary *jsonDict = (NSDictionary *)json;
    NSDictionary *resultDict = [jsonDict dictionaryForKey:@"result"];
    NSArray *data = [resultDict arrayForKey:@"data"];
    [FMLaunchViewModel shareInstance].dataArr = [NSMutableArray array];
    for (int i = 0; i < data.count; i ++) {
        NSDictionary *dict = [data objectAtIndex:i];
        FMLaunchDo *dd1 = [[FMLaunchDo alloc]initWithDictionary:dict];
        [[FMLaunchViewModel shareInstance].dataArr addObject:dd1];
    }
}
@end
