//
//  Student+English.m
//  1
//
//  Created by qingyun on 16/4/9.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Student+English.h"

@implementation Student (English)
-(void)gai
{
    
    NSString *OC=[NSString stringWithCString:self.name encoding:NSUTF8StringEncoding];
    NSArray *arr1=[OC componentsSeparatedByString:@" "];
    NSLog(@"%@ %@",arr1[1],arr1[0]);
}
@end
