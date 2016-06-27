//
//  Student+Find.m
//  1
//
//  Created by qingyun on 16/4/9.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Student+Find.h"

@implementation Student (Find)
-(void)chazhao:(char *)name
{
    NSString *a1=[NSString stringWithCString:self.name encoding:NSUTF8StringEncoding];
    if ([a1 isEqualToString:[NSString stringWithUTF8String:name]])
    {
        NSLog(@"YES");
    }
    else
    {
        NSLog(@"NO");
    }
}
@end
