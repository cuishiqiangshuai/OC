//
//  vehicle.m
//  2
//
//  Created by qingyun on 16/4/4.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "vehicle.h"

@implementation vehicle
-(void)setWheels:(int)w andsetWeight:(double)w1
{
    _wheels=w;
    _weight=w1;
}
-(void)drawvehicle
{
    NSLog(@"%d,%lf",_wheels,_weight);
}
@end
