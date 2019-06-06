//
//  EmptyCell.h
//  PCDBank
//
//  Created by FuXinMing on 2019/3/30.
//  Copyright © 2019 DK. All rights reserved.
//

#import "RETableViewCell.h"
#import "RETableViewItem.h"
@interface EmptyItem : RETableViewItem
@property (nonatomic,copy) UIColor *bgColor;
@property (nonatomic,copy) UIColor *lineColor;
@property (nonatomic,assign) BOOL hasLine;

- (id)initWithHeight:(float)height;
@end

@interface EmptyCell : RETableViewCell
@property (strong, readwrite, nonatomic) EmptyItem *item;
@end


