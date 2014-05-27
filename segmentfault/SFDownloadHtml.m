//
//  SFDownloadHtml.m
//  segmentfault
//
//  Created by 科技慧享 on 14-5-27.
//  Copyright (c) 2014年 segmentfault. All rights reserved.
//

#import "SFDownloadHtml.h"
#import <TFHpple.h>

@implementation SFDownloadHtml
-(NSString*)downloadHtml:(NSString *)url{
    
    NSError* error;
    NSData* htmlData = [[NSString stringWithContentsOfURL:[NSURL URLWithString:url] encoding:NSASCIIStringEncoding error:&error] dataUsingEncoding:NSUTF8StringEncoding];
    TFHpple* xpathParser = [[TFHpple alloc]  initWithHTMLData:htmlData];
    NSArray* elements = [xpathParser searchWithXPathQuery:@"//title"];//get the title
    NSLog(@"%@",[elements description]);
    TFHppleElement* element = [elements objectAtIndex:0];
    NSString* content = [element content];
    NSString* tagname = [element tagName];
    NSString* attr = [element objectForKey:@"href"];
    NSLog(@"content is %@",content);
    return content;
    }
@end
