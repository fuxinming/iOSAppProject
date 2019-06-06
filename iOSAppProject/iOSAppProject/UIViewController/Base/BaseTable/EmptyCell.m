//
//  EmptyCell.m
//  PCDBank
//
//  Created by FuXinMing on 2019/3/30.
//  Copyright © 2019 DK. All rights reserved.
//

#import "EmptyCell.h"
@implementation EmptyItem
- (id)init{
    if (self = [super init]) {
        self.cellHeight = 10;
        self.bgColor = [UIColor clearColor];
        self.lineColor = [UIColor lightGrayColor];
        self.hasLine = NO;
    }
    return self;
}

- (id)initWithHeight:(float)height{
    if (self = [super init]) {
        self.cellHeight = height;
        self.bgColor = [UIColor clearColor];
        self.lineColor = [UIColor lightGrayColor];
        self.hasLine = NO;
    }
    return self;
}
@end

@interface EmptyCell(){
    
}
@property (nonatomic,strong)UIView *line;
@end

@implementation EmptyCell
@dynamic item;
- (void)cellDidLoad{
    [super cellDidLoad];
    
    self.backgroundColor = [UIColor clearColor];
    self.contentView.backgroundColor = [UIColor clearColor];

    [self.contentView addSubview:self.line];

}

- (UIView *)line{
    if (!_line) {
        _line = [[UIView alloc]init];
        _line.hidden = YES;
    }
    return _line;
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated{}

- (void)cellWillAppear{
    [super cellWillAppear];
    self.contentView.backgroundColor = self.item.bgColor;
    self.line.backgroundColor = self.item.lineColor;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    self.line.frame = CGRectMake(0, self.item.cellHeight - 0.5, ScreenWidth, 0.5);
    self.line.hidden = !self.item.hasLine;
}
@end
