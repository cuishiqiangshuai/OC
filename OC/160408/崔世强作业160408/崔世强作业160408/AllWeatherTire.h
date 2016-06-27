//
//  AllWeatherTire.h
//  崔世强作业160408
//
//  Created by qingyun on 16/4/9.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Tire.h"

@interface AllWeatherTire : Tire
{
    NSString* _rainhandling;
    NSString* _snowHandling;
}
-(id)initWithRainHandling:(NSString *)rain;
-(id)initWithSnowHandling:(NSString *)snow;
@end
