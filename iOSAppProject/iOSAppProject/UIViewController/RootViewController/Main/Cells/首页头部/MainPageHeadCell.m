//
//  InvestGridMenuCell.m
//  PCDBank
//
//  Created by FuXinMing on 2019/3/30.
//  Copyright © 2019 DK. All rights reserved.
//

#import "MainPageHeadCell.h"
#import "GridMenuDo.h"
#import "FMScrollGridView.h"
@implementation MainPageHeadItem
- (id)init{
    if (self = [super init]) {
        self.cellHeight = [FMUtil IsIphoneX]?345.0f:320.0f;
        
        NSMutableArray *arr1 = [NSMutableArray array];
        NSMutableArray *arr2 = [NSMutableArray array];
        NSArray *tArr1 = @[@{@"name":@"转账",@"icon":@"转账"},@{@"name":@"明细",@"icon":@"明细"},@{@"name":@"账户总览",@"icon":@"账户总览"}];
        for (int i = 0; i < tArr1.count; i ++) {
            NSDictionary *dcit = [tArr1 objectAtIndex:i];
            GridMenuDo *menuDo = [[GridMenuDo alloc]init];
            menuDo.mENUNAME = dcit[@"name"];
            menuDo.mENUICONPATH = dcit[@"icon"];
            [arr1 addObject:menuDo];
        }
        
        NSArray *tArr2 = @[@{@"name":@"保险产品",@"icon":@"保险产品"},@{@"name":@"储蓄国债",@"icon":@"储蓄国债"},@{@"name":@"储蓄理财",@"icon":@"储蓄理财"},@{@"name":@"电话费",@"icon":@"电话费"},@{@"name":@"额度管理",@"icon":@"额度管理"},@{@"name":@"贵金属",@"icon":@"贵金属"},@{@"name":@"基金超市",@"icon":@"基金超市"}];
        for (int i = 0; i < tArr2.count; i ++) {
            NSDictionary *dcit = [tArr2 objectAtIndex:i];
            GridMenuDo *menuDo = [[GridMenuDo alloc]init];
            menuDo.mENUNAME = dcit[@"name"];
            menuDo.mENUICONPATH = dcit[@"icon"];
            [arr2 addObject:menuDo];
        }
        
        
        self.headArray = arr1;
        self.menuArray = arr2;
    }
    return self;
}
@end

@interface MainPageHeadCell(){
    
}
@property (nonatomic, strong)UIImageView *bgImageView;
@property (nonatomic, strong)UIImageView *gridBgImageView;
@property(nonatomic,strong) FMScrollGridView *giridHeardMenuView;
@property(nonatomic,strong) FMScrollGridView *giridMenuView;

@end

@implementation MainPageHeadCell
@dynamic item;
- (void)cellDidLoad{
    [super cellDidLoad];
    
    self.backgroundColor = [UIColor clearColor];
    self.contentView.backgroundColor = [UIColor clearColor];
    [self.contentView addSubview:self.bgImageView];
    [self.contentView addSubview:self.gridBgImageView];
    [self.contentView addSubview:self.giridHeardMenuView];
    [self.contentView addSubview:self.giridMenuView];

}


- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated{}

- (void)cellWillAppear{
    [super cellWillAppear];
    [self setDataForHead];
    [self setMenuForHead];
}

- (void)layoutSubviews{
    [super layoutSubviews];
    self.bgImageView.frame = CGRectMake(0, 0, ScreenWidth, 262);
    self.gridBgImageView.frame = self.giridMenuView.frame;
}
#pragma mark - # Getter
-(UIImageView *)bgImageView{
    if(!_bgImageView){
        _bgImageView = [UIImageView new];
        _bgImageView.image = [UIImage imageNamed:@"背景"];
        [self.contentView addSubview:_bgImageView];
    }
    return _bgImageView;
}

-(UIImageView *)gridBgImageView{
    if(!_gridBgImageView){
        _gridBgImageView = [UIImageView new];
        _gridBgImageView.image = [UIImage imageNamed:@"bv首页-tpo-bg"];
        [self.contentView addSubview:_gridBgImageView];
    }
    return _gridBgImageView;
}

- (FMScrollGridView *)giridMenuView{
    if(!_giridMenuView){
        _giridMenuView = [[FMScrollGridView alloc] initWithFrame:CGRectMake(10, [FMUtil IsIphoneX]?180:155, ScreenWidth-20, 160)];
        _giridMenuView.showsHorizontalScrollIndicator = NO;
        _giridMenuView.showsVerticalScrollIndicator = NO;
        _giridMenuView.scrollsToTop = NO;
        _giridMenuView.bounces =NO;
        _giridMenuView.clipsToBounds =YES;
        _giridMenuView.pagingEnabled =YES;
        _giridMenuView.numberHorizontal = 4;
        _giridMenuView.numberVertical = 2;
        _giridMenuView.hSeparatorColor = [UIColor clearColor];
        _giridMenuView.backgroundColor =[UIColor clearColor];
        _giridMenuView.vSeparatorWdith =0;
        _giridMenuView.layer.cornerRadius =8.0f;
        _giridMenuView.layer.masksToBounds = YES;
    }
    return _giridMenuView;
}

- (FMScrollGridView *)giridHeardMenuView{
    if(!_giridHeardMenuView){
        _giridHeardMenuView = [[FMScrollGridView alloc] initWithFrame:CGRectMake(15,[FMUtil IsIphoneX]?100:75, ScreenWidth-30, 70)];
        _giridHeardMenuView.showsHorizontalScrollIndicator = NO;
        _giridHeardMenuView.showsVerticalScrollIndicator = NO;
        _giridHeardMenuView.scrollsToTop = NO;
        _giridHeardMenuView.bounces =NO;
        _giridHeardMenuView.clipsToBounds =YES;
        _giridHeardMenuView.pagingEnabled =YES;
        _giridHeardMenuView.numberHorizontal = 3;
        _giridHeardMenuView.numberVertical = 1;
        _giridHeardMenuView.hSeparatorColor = [UIColor clearColor];
        _giridHeardMenuView.backgroundColor =[UIColor clearColor];
        _giridHeardMenuView.vSeparatorWdith =0;
        [self.contentView addSubview:_giridHeardMenuView];
    }
    return _giridHeardMenuView;
}

-(void)setDataForHead
{
    CGFloat itemWidth = 80;
    NSMutableArray *menuItems =[[NSMutableArray alloc] initWithCapacity:self.item.headArray.count];
    for (NSUInteger i=0; i<self.item.headArray.count; i++) {
        
        GridMenuDo *itemDict =[self.item.headArray objectAtIndex:i];
        
        //标题
        UILabel *titleLabel =[[UILabel alloc]init];
        titleLabel.text = itemDict.mENUNAME;
        titleLabel.font =[UIFont systemFontOfSize:13];
        titleLabel.textColor =[UIColor whiteColor];
        //图片
        UIButton *btn =[UIButton buttonWithType:UIButtonTypeCustom];
        [btn setImage:[UIImage imageNamed:itemDict.mENUICONPATH] forState:UIControlStateNormal];
        //userInfo可以携带菜单数据项
        FMScrollGridItem *item =[FMScrollGridItem itemWithTitleLabel:titleLabel imageBtn:btn size:CGSizeMake(30, 30) editable:NO removeable:YES userInfo:itemDict];
        item.titleInterval = 4;
        item.target = self.item.target;
        item.title  = itemDict.mENUNAME;
        item.titleLabel.textColor = [UIColor whiteColor];
        item.action = @selector(menuItemPressed:);
        [menuItems addObject:item];
    }
    
    self.giridHeardMenuView.itemSize =CGSizeMake(itemWidth, itemWidth);
    self.giridHeardMenuView.items = menuItems;
    [self.giridHeardMenuView reloadData];
    
    
}

-(void)setMenuForHead
{
    CGFloat itemWidth = 80;
    NSMutableArray *menuItems =[[NSMutableArray alloc] initWithCapacity:self.item.menuArray.count];
    
    for (NSUInteger i=0; i<self.item.menuArray.count; i++) {
        
        GridMenuDo *itemDict =[self.item.menuArray objectAtIndex:i];
        FMScrollGridItem *item = [self creatItemForDo:itemDict];
        [menuItems addObject:item];
    }
    
    GridMenuDo *itemDict = [[GridMenuDo alloc] init];
    itemDict.mENUNAME = @"全部";
    FMScrollGridItem *itemMore = [self creatItemForDo:itemDict];
    [menuItems addObject:itemMore];
    
    self.giridMenuView.itemSize =CGSizeMake(itemWidth, itemWidth);
    self.giridMenuView.items = menuItems;
    [self.giridMenuView reloadData];
    
}

-(FMScrollGridItem *) creatItemForDo:(GridMenuDo *)menuDo
{
    //标题
    UILabel *titleLabel =[[UILabel alloc] init];
    titleLabel.text = menuDo.mENUNAME;
    titleLabel.font =[UIFont systemFontOfSize:13];
    titleLabel.textColor =[UIColor colorWithHexString:@"0x333333"];
    //图片
    UIButton *btn =[UIButton buttonWithType:UIButtonTypeCustom];

     [btn setBackgroundImage:[UIImage imageNamed:menuDo.mENUICONPATH] forState:UIControlStateNormal];
    
    //userInfo可以携带菜单数据项
    FMScrollGridItem *item =[FMScrollGridItem itemWithTitleLabel:titleLabel imageBtn:btn size:CGSizeMake(30, 30) editable:NO removeable:YES userInfo:menuDo];
    item.titleInterval = 4;
    item.target = self.item.target;
    item.title  = menuDo.mENUNAME;
    item.userInfo = menuDo;
    item.action = @selector(menuItemPressed:);
    
    return item;
}

@end
