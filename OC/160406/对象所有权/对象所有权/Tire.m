//
//  Tire.m
//  对象所有权
//
//  Created by qingyun on 16/4/7.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Tire.h"

@implementation Tire
-(void)setTireName:(NSString *)name
{
    _tireName=name;
}
-(void)setTireRadius:(double)radius
{
    _tireRadius=radius;
}
-(NSString *)description
{
    return [NSString stringWithFormat:@"Tire:%@,%f",_tireName,_tireRadius];
}
-(void)dealloc
{
    NSLog(@"Tire:%@,%g的Tire被释放了...",_tireName,_tireRadius);
    [super dealloc];
}
@end
