//
//  Girl.m
//  2
//
//  Created by qingyun on 16/4/6.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Girl.h"

@implementation Girl
-(void)setAge:(int)age
{
    _age=age;
}


-(NSString *)description
{
    return [NSString stringWithFormat:@":%d岁的%@",_age,_name];
}


-(void)dealloc
{
    NSLog(@"girl:%d岁的%@被释放了...",_age,_name);
    [super dealloc];
}
//-(void)playgirl
//{
//    NSLog(@"%@,%d",_name,_age);
//}
@end
