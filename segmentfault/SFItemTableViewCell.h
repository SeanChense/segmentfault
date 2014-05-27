//
//  SFItemTableViewCell.h
//  segmentfault
//
//  Created by 科技慧享 on 14-5-27.
//  Copyright (c) 2014年 segmentfault. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SFItemTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *Title;
@property (weak, nonatomic) IBOutlet UILabel *NumberOfRead;
@property (weak, nonatomic) IBOutlet UILabel *passTime;
@property (weak, nonatomic) IBOutlet UIImageView *Avatar;

@end
