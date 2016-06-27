//
//  vehicle.h
//  2
//
//  Created by qingyun on 16/4/4.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface vehicle : NSObject
{
    int _wheels;
    double _weight;
}
-(void)setWheels:(int)w andsetWeight:(double)w1;
-(void)drawvehicle;
@end
