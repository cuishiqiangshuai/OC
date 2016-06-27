//
//  truck.h
//  2
//
//  Created by qingyun on 16/4/4.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "vehicle.h"

@interface truck : vehicle
{
    int _passenger_load;
    double _payload;
}
-(void)setPassenger_load:(int)p1 andsetpayload:(double)pay;
@end
