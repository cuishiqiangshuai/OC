//
//  Student.m
//  自动释放池
//
//  Created by qingyun on 16/4/6.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Student.h"

@implementation Student
-(void)dealloc
{
    NSLog(@"%d岁的Student被释放了...",_age);
    [super dealloc];
}
@end
