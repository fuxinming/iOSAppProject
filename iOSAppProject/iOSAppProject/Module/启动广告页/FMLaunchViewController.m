//
//  FMLaunchViewController.m
//  iOSAppProject
//
//  Created by FuXinMing on 2019/5/23.
//  Copyright © 2019 FuXinMing. All rights reserved.
//

#import "FMLaunchViewController.h"
#import "FMLaunchViewModel.h"
@interface FMLaunchViewController (){
    NSTimer * timer;
    int second;
    UIButton * skipBtn;
    UIImageView *launchImg;
}

@end

@implementation FMLaunchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    launchImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight)];
    [self.view addSubview:launchImg];
    skipBtn = [[UIButton alloc] init];
    skipBtn.frame = CGRectMake(ScreenWidth - 80, [FMUtil IsIphoneX]?44:20, 70, 30);
    skipBtn.backgroundColor = ColorHex(0x999999);
    skipBtn.hidden = YES;
    [skipBtn cornerRadius:4];
    [skipBtn setTitle:@"跳过" forState:UIControlStateNormal];
    [skipBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    skipBtn.titleLabel.font = [UIFont systemFontOfSize:12];
    [skipBtn addTarget:self action:@selector(skipBtnTouchUpInside:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:skipBtn];
    second = 3;
    [[FMLaunchViewModel shareInstance] loadCacheLaunchImg];
    [[FMLaunchViewModel shareInstance] loadLaunchImg];
    [self showLaunchImg];
    
}

#pragma mark- 页面展示

-(void) showLaunchImg
{
    UIImage * img =[self getLaunchImg];
    launchImg.image = img;
    FMLaunchDo *dd1 = nil;
    if ([FMLaunchViewModel shareInstance].dataArr.count > 0) {
        dd1 = [[FMLaunchViewModel shareInstance].dataArr objectAtIndex:0];
    }
    [launchImg sd_setImageWithURL:[NSURL URLWithString:dd1.thumbnailPicS03] placeholderImage:img];
}

//MARK: - 获取启动图
- (UIImage *)getLaunchImg{
    
    CGSize viewSize = [UIScreen mainScreen].bounds.size;
    NSString *viewOrientation = @"Portrait";
    NSString *launchImg = nil;
    NSArray *imagesDict = [[[NSBundle mainBundle] infoDictionary] valueForKey:@"UILaunchImages"];
    for (NSDictionary *dict in imagesDict) {
        
        CGSize size = CGSizeFromString(dict[@"UILaunchImageSize"]);
        if (CGSizeEqualToSize(viewSize, size)&&[viewOrientation isEqualToString:dict[@"UILaunchImageOrientation"]])
        {
            launchImg = dict[@"UILaunchImageName"];
        }
    }
    
    return [UIImage imageNamed:launchImg];
}



#pragma mark - # Event Responsei
- (void)skipBtnTouchUpInside:(UIButton *)sender {
    if (self.launchDismissed) {
        self.launchDismissed(nil);
    }
}


-(void)initTimer
{
    if (timer==nil) {
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(ReadSecondAction) userInfo:nil repeats:YES];
    }
}

-(void)ReadSecondAction {
    
    if (second<1) {
        second = 3;
        [self dismissLaunchVC];
    }else{
        skipBtn.hidden = NO;
        NSString * title = [NSString stringWithFormat:@"跳过 %d", second];
        [skipBtn setTitle:title forState:UIControlStateNormal];
    }
    
    second--;
}


-(void)dismissLaunchVC{
    
    [timer invalidate];
    timer = nil;
    //    [self.activity stopAnimating];
    if (self.launchDismissed) {
        self.launchDismissed(nil);
    }
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    skipBtn.hidden = YES;
    [self initTimer];
    
}

-(void)viewWillDisappear:(BOOL)animated
{
    [timer invalidate];
    timer = nil;
    [super viewWillDisappear:animated];
}
@end
