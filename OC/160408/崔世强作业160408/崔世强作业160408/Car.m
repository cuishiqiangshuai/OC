//
//  Car.m
//  崔世强作业160408
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Car.h"

@implementation Car
-(id)initWithBrand:(NSString *)brand1 andPrice:(int)price andTires:(Tire *)tires andEngine:(Engine *)engine
{
    if (self=[super init])
    {
        _brand=brand1;
        _price=price;
        _tires=tires;
        _engine=engine;
    }
    return self;
}
-(id)initWithTires:(Tire *)tires
{
    if (self=[super init])
    {
        _tires=tires;
    }
    return  self;
}
-(id)initWithEngine:(Engine *)engine
{
    if (self=[super init])
    {
        _engine=engine;
    }
    return self;
}
-(id)initWithTires:(Tire *)tires andEngine:(Engine *)engine
{
    if (self=[super init])
    {
        _tires=tires;
        _engine=engine;
    }
    return self;
}
-(NSString *)description
{
    return [NSString stringWithFormat:@"%@,%d,%@,%@",_brand,_price,_tires,_engine];
}
@end
