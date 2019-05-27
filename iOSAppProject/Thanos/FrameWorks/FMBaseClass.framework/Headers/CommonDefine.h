//
//  CommonDefine.h
//  FMBaseClass
//
//  Created by FuXinMing on 2019/5/9.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#ifndef CommonDefine_h
#define CommonDefine_h

#ifdef DEBUG
#define FMLog(...) NSLog(@"%s 第%d行 \n %@\n\n",__func__,__LINE__,[NSString stringWithFormat:__VA_ARGS__])
#else
#define FMLog(...)
#endif

#define ScreenWidth  [[UIScreen mainScreen] bounds].size.width
#define ScreenHeight [[UIScreen mainScreen] bounds].size.height

#define WeakSelf(ws)     __weak  typeof(self) ws = self;

#define ISEmptyStr(var) [FMUtil nilOrEmptyString:var]

#define SafeStr(var) [FMUtil safeString:var]

//获得主 window
#define Window [[UIApplication sharedApplication].delegate window]

#define RootNavPush(vc) [(UINavigationController *)Window.rootViewController pushViewController:vc animated:YES]

#define RootNavPop(_ANIMATE) [(UINavigationController *)Window.rootViewController popViewControllerAnimated:_ANIMATE]




#define ColorRGBA(r,g,b,a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:a]
#define ColorRGB(r,g,b) ColorRGBA(r,g,b,1)

#define ColorHexA(hexColor,a) [UIColor colorWithRed:((float)((hexColor & 0xFF0000) >> 16))/255.0 green:((float)((hexColor & 0xFF00) >> 8))/255.0 blue:((float)(hexColor & 0xFF))/255.0 alpha:a]
#define ColorHex(hexColor) ColorHexA(hexColor,1.0f)

#define CurrentAppDelegate   ((AppDelegate *)[UIApplication sharedApplication].delegate)




//GCD - 一次性执行
#define PCDDISPATCH_ONCE_BLOCK(onceBlock) static dispatch_once_t onceToken; dispatch_once(&onceToken, onceBlock);
//GCD - 在Main线程上运行
#define PCDDISPATCH_MAIN_THREAD(mainQueueBlock) dispatch_async(dispatch_get_main_queue(), mainQueueBlock);
//GCD - 开启异步线程
#define PCDDISPATCH_GLOBAL_QUEUE_DEFAULT(globalQueueBlock) dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), globalQueueBlocl);


//存储对象
#define UserDefaultSetObjectForKey(__VALUE__,__KEY__) \
{\
[[NSUserDefaults standardUserDefaults] setObject:__VALUE__ forKey:__KEY__];\
[[NSUserDefaults standardUserDefaults] synchronize];\
}

//获得存储的对象
#define UserDefaultObjectForKey(__KEY__)  [[NSUserDefaults standardUserDefaults] objectForKey:__KEY__]

//     删除对象
#define UserDefaultRemoveObjectForKey(__KEY__) \
{\
[[NSUserDefaults standardUserDefaults] removeObjectForKey:__KEY__];\
[[NSUserDefaults standardUserDefaults] synchronize];\
}

#define RECEIVE_NOTI(obj,sel,nameStr) [[NSNotificationCenter defaultCenter] addObserver:obj selector:sel name:nameStr object:nil];

#define POST_NOTI(key) [[NSNotificationCenter defaultCenter]postNotificationName:key object:nil]

#define RemoveAllNotification()     \
[[NSNotificationCenter defaultCenter] removeObserver:self]





// MARK: -- const string --

#define yyyyMMddHHmmss @"yyyy-MM-dd HH:mm:ss"
#define yyyyMMddHHmm @"yyyy-MM-dd HH:mm"
#define yyyyMMdd @"yyyy-MM-dd"



#endif /* CommonDefine_h */
