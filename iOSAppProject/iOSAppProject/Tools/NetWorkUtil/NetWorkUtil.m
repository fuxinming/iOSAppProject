//
//  NetWorkUtil.m
//  UDPProject
//
//  Created by FuXinMing on 2019/3/18.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import "NetWorkUtil.h"

@implementation NetWorkUtil


+(NSMutableDictionary *)getPublicParams{
    NSMutableDictionary *mdict = [[NSMutableDictionary alloc]init];
    return mdict;
}

+ (__kindof NSURLSessionTask *)GET:(NSString *)URL
                        parameters:(id)parameters
                     responseCache:(FMHttpRequestCache)responseCache
                           success:(FMHttpRequestSuccess)success
                           failure:(FMHttpRequestFailed)failure{
    NSURLSessionTask *task;
    if (responseCache != nil) {
        task = [FMNetWorkManager GET:URL parameters:parameters responseCache:^(id responCache) {
            if (responseCache) {
                responseCache(responCache);
            }
        } success:^(id json) {
            if (success) {
                success(json);
            }
        } failure:^(NSError *error) {
            if (failure) {
                failure(error);
            }
        }];
    }else{
        task = [FMNetWorkManager GET:URL parameters:parameters success:^(id json) {
            if (success) {
                success(json);
            }
        } failure:^(NSError *error) {
            if (failure) {
                failure(error);
            }
        }];
    }
    return task;
}

+ (__kindof NSURLSessionTask *)POST:(NSString *)URL
                         parameters:(id)parameters
                      responseCache:(FMHttpRequestCache)responseCache
                            success:(FMHttpRequestSuccess)success
                            failure:(FMHttpRequestFailed)failure{
    NSURLSessionTask *task;
    if (responseCache != nil) {
        task = [FMNetWorkManager POST:URL parameters:parameters responseCache:^(id responCache) {
            if (responseCache) {
                responseCache(responCache);
            }
        } success:^(id json) {
            if (success) {
                success(json);
            }
//            int status = [json[@"status"] intValue];
//            if (status == 200) {
//                if (success) {
//                    success(json);
//                }
//            }else if (status == 601) {
//                AppDelegate *del = [AppUtil appDelegate];
//                [del beginSelectWindow];
//                Toast(json[@"msg"]);
//            }else{
//                Toast(json[@"msg"]);
//            }
            
        } failure:^(NSError *error) {
            if (failure) {
                failure(error);
            }
        }];
    }else{
        task = [FMNetWorkManager POST:URL parameters:parameters success:^(id json) {
            if (success) {
                success(json);
            }
//            int status = [json[@"status"] intValue];
//            if (status == 200) {
//                if (success) {
//                    success(json);
//                }
//            }else if (status == 601) {
//                AppDelegate *del = [AppUtil appDelegate];
//                [del beginSelectWindow];
//                Toast(json[@"msg"]);
//                [LoadToastView dismiss];
//            }else{
//                Toast(json[@"msg"]);
//                [LoadToastView dismiss];
//            }
            
        } failure:^(NSError *error) {
            if (failure) {
                failure(error);
            }
        }];
    }
    return task;
}

#pragma mark - 上传文件
+ (NSURLSessionTask *)uploadFileWithURL:(NSString *)URL
                             parameters:(id)parameters
                                   name:(NSString *)name
                               filePath:(NSString *)filePath
                               progress:(FMHttpProgress)progress
                                success:(FMHttpRequestSuccess)success
                                failure:(FMHttpRequestFailed)failure {
    
    NSURLSessionTask *task = [FMNetWorkManager uploadFileWithURL:URL parameters:parameters name:name filePath:filePath progress:^(NSProgress *progress1) {
        if (progress) {
            progress(progress1);
        }
    } success:^(id json) {
        if (success) {
            success(json);
        }
    } failure:^(NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
    
    return task;
}
+ (NSURLSessionTask *)uploadImagesWithURL:(NSString *)URL
                               parameters:(id)parameters
                                     name:(NSString *)name
                                   images:(NSArray<UIImage *> *)images
                                fileNames:(NSArray<NSString *> *)fileNames
                               imageScale:(CGFloat)imageScale
                                imageType:(NSString *)imageType
                                 progress:(FMHttpProgress)progress
                                  success:(FMHttpRequestSuccess)success
                                  failure:(FMHttpRequestFailed)failure{
    NSURLSessionTask *task = [FMNetWorkManager uploadImagesWithURL:URL parameters:parameters name:name images:images fileNames:fileNames imageScale:imageScale imageType:imageType progress:^(NSProgress *progress1) {
        if (progress) {
            progress(progress1);
        }
    } success:^(id json) {
        if (success) {
            success(json);
        }
       
    } failure:^(NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
    return task;
                              
}


+ (id)httpCacheForURL:(NSString *)URL parameters:(id)parameters{
    return [FMNetWorkCache httpCacheForURL:URL parameters:parameters];
}
@end
