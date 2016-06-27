//
//  AllWeatherTire.m
//  崔世强作业160408
//
//  Created by qingyun on 16/4/9.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "AllWeatherTire.h"

@implementation AllWeatherTire
-(id)initWithRainHandling:(NSString *)rain
{
    if (self=[super init])
    {
        _rainhandling=rain;
    }
    return self;
}
-(id)initWithSnowHandling:(NSString *)snow
{
    if (self=[super init])
    {
        _snowHandling=snow;
    }
    return self;
}
-(NSString *)description
{
    if (_rainhandling)
    {
        return [NSString stringWithFormat:@"%@,%@",[super description],_rainhandling];
    }
    else
    {
        return [NSString stringWithFormat:@"%@,%@",[super description],_snowHandling];
    }
}
@end
