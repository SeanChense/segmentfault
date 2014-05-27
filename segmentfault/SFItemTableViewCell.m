//
//  SFItemTableViewCell.m
//  segmentfault
//
//  Created by 科技慧享 on 14-5-27.
//  Copyright (c) 2014年 segmentfault. All rights reserved.
//

#import "SFItemTableViewCell.h"

@implementation SFItemTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
