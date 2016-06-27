//
//  car.m
//  2
//
//  Created by qingyun on 16/4/4.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "car.h"

@implementation car
-(void)setPassenger_load:(int)p
{
    _passenger_load=p;
}
-(void)drawvehicle
{
    [super drawvehicle];
    NSLog(@"%d",_passenger_load);
}
@end
