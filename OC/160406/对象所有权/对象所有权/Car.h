//
//  Car.h
//  对象所有权
//
//  Created by qingyun on 16/4/7.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tire.h"
@interface Car : NSObject
{
    NSString *_carName;
    double _carPrice;
    Tire *_carTire;//轮胎属性
}
-(void)setCarName:(NSString *)name;
-(void)setCarPrice:(double)price;
-(void)setCarTire:(Tire *)tire;
-(void)showCarInfo;
@end
