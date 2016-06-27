//
//  kecheng.m
//  4
//
//  Created by qingyun on 16/4/9.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "kecheng.h"

@implementation kecheng
-(void)xianshi
{
    NSLog(@"%@,%d",_name,_fenshu);
}
-(id)copyWithZone:(NSZone *)zone
{
    kecheng *k=[[[self class]allocWithZone:zone] init];
    k.name=[_name copy];
    return k;
}
@end
