//
//  Car.m
//  对象所有权
//
//  Created by qingyun on 16/4/7.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Car.h"

@implementation Car
-(void)setCarName:(NSString *)name
{
    _carName=name;
}
-(void)setCarPrice:(double)price
{
    _carPrice=price;
}
-(void)setCarTire:(Tire *)tire
{
    //版本一
   // _carTire=tire;
    //版本二：涉及复合
   // [tire retain];
   // _carTire=tire;
//    //版本三：当两次设置的tire不同
//    //应该先释放旧Tire 再retain新tire
//    [_carTire release];
//    [tire retain];
//    _carTire=tire;
    //版本四
    //当两次设置的tire属性相同
    //1.先判断两次的设置是否相同，不同则进行操作
    if (_carTire!=tire)
    {
        [_carTire release];
        [tire retain];
        _carTire=tire;
    }
}
-(void)dealloc
{
    NSLog(@"Car:%@,%g,%@的Car被释放了..",_carName,_carPrice,_carTire);
    //释放Car拥有的Tire属性
    [_carTire release];
    _carTire=nil;
    [super dealloc];
}
-(void)showCarInfo
{
   NSLog(@"Car:%@,%g,%@",_carName,_carPrice,_carTire); 
}
@end
