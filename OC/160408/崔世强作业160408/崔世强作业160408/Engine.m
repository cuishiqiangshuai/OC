//
//  Engine.m
//  崔世强作业160408
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Engine.h"

@implementation Engine
-(void)setName:(NSString *)name andsetPower:(double)power
{
    _name=name;
    _power=power;
}
-(NSString *)description
{
    return [NSString stringWithFormat:@"%@,%f",_name,_power];
}
@end
