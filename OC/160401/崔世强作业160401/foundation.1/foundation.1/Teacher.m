//
//  Teacher.m
//  foundation.1
//
//  Created by qingyun on 16/4/4.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher
-(void)setName:(NSString *)name andsetAge:(int)age
{
    _name=name;
    _age=age;
}
-(void)lookup
{
    NSLog(@"I am %@",_name);
}
@end
