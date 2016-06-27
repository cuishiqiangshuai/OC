//
//  1.m
//  类方法
//
//  Created by qingyun on 16/3/31.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "1.h"

@implementation Person
+(Person *)personWithName:(NSString *)name andAge:(int)age andSex:(NSString *)sex
{
    Person *p=[Person new];
    [p setName:name andAge:age andSex:sex];
    return p;
}
+(void)sleep
{
    NSLog(@"%@正在睡觉....",self);
}
@end
