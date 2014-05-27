//
//  SFViewController.h
//  segmentfault
//
//  Created by 科技慧享 on 14-5-27.
//  Copyright (c) 2014年 segmentfault. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SFViewController : UITableViewController
<UITableViewDelegate,UITableViewDataSource>
{
    NSString* temp;
}
@property (nonatomic,retain) UITableView* table;
@end
