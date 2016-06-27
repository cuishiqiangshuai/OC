//
//  car.h
//  2
//
//  Created by qingyun on 16/4/4.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "vehicle.h"

@interface car : vehicle
{
    int _passenger_load;
}
-(void)setPassenger_load:(int)p;
@end
