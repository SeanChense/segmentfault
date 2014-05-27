//
//  SFViewController.m
//  segmentfault
//
//  Created by 科技慧享 on 14-5-27.
//  Copyright (c) 2014年 segmentfault. All rights reserved.
//

#import "SFViewController.h"
#import "SFItemTableViewCell.h"
#import <TFHpple.h>
#import "SFDownloadHtml.h"

@interface SFViewController ()

@end

@implementation SFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	_table = [[UITableView alloc] init];
    _table.delegate = self;
    _table.dataSource = self;
    [self.view addSubview:_table];
    
    
    //下载数据
    SFDownloadHtml *sfDownloadHtml = [[SFDownloadHtml alloc] init];
    temp = [sfDownloadHtml downloadHtml:@"http://segmentfault.com/"];
    NSLog(@"temp is %@",temp);
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 20;
    //这个方法返回表哥的每个分组的行数，非分组的表格默认为一个分组
   
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return 1;//这个方法返回表哥的组数  就是section的个数
    
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString* indentifier=@"itemcell";
    SFItemTableViewCell *cell = (SFItemTableViewCell*)[tableView dequeueReusableCellWithIdentifier:indentifier];
    if(cell ==NULL)
    {
        cell = [[SFItemTableViewCell alloc] init];
        
    }
    cell.Title.text =temp;
    
    return cell;
    
}

























@end
