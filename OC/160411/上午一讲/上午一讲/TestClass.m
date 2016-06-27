//
//  TestClass.m
//  上午一讲
//
//  Created by qingyun on 16/4/11.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "TestClass.h"

@implementation TestClass
+(void)showInfo:(id)obj
{
    NSLog(@"odj%@",obj);
    NSLog(@"name is %@,age is %@",[obj valueForKey:@"name"],[obj valueForKey:@"age"]);
}
@end
