//
//  truck.m
//  2
//
//  Created by qingyun on 16/4/4.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "truck.h"

@implementation truck
-(void)setPassenger_load:(int)p1 andsetpayload:(double)pay
{
    _passenger_load=p1;
    _payload=pay;
}
-(void)drawvehicle
{
    [super drawvehicle];
    NSLog(@"%d,%lf",_passenger_load,_payload);
}
@end
