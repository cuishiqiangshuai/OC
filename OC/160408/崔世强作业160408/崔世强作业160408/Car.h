//
//  Car.h
//  崔世强作业160408
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tire.h"
#import "Engine.h"
@interface Car : NSObject
{
    NSString *_brand;//品牌
    int _price;//价格
    Tire* _tires;
    Engine* _engine;
}
-(id)initWithBrand:(NSString *)brand1 andPrice:(int)price andTires:(Tire *)tires andEngine:(Engine *)engine;
-(id)initWithTires:(Tire *)tires;
-(id)initWithEngine:(Engine *)engine;
-(id)initWithTires:(Tire *)tires andEngine:(Engine *)engine;
@end
