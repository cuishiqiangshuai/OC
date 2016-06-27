//
//  Tire.m
//  崔世强作业160408
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Tire.h"

@implementation Tire
//-(id)init
//{
//    self=[self initWithBrond:_brand andPreesure:_preesure andTireDeepth:_tireDeepth];
//    return self;
//}
-(id)initWithBrond:(NSString *)brand andPreesure:(double)preesure andTireDeepth:(double)tireDeepth
{
    if (self=[super init])
    {
        _brand=brand;
        _preesure=preesure;
        _tireDeepth=tireDeepth;
    }
    return self;
}
-(id)initWithPreesure:(double)preesure;
{
    if (self=[super init])
    {
        _preesure=preesure;
    }
    return self;
}
-(id)initWithtireDeepth:(double)tireDeepth;
{
    if (self=[super init])
    {
        _tireDeepth=tireDeepth;
    }
    return self;
}
-(NSString *)description
{
    return [NSString stringWithFormat:@"%@,%lf,%lf",_brand,_preesure,_tireDeepth];
}
@end
