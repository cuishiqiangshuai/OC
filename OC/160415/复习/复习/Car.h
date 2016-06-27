//
//  Car.h
//  复习
//
//  Created by qingyun on 16/4/15.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
{
    NSString *_carName;
    double _carPrice;
}
//set方法
-(void)setCarName:(NSString *)name andPrice:(double)price;//多参
//getter方法
//-(NSString *)carName;
//-(double)carPrice;

//属性 @property
@property(nonatomic,copy)NSString *carName;
@property(nonatomic,assign)double carPrice;

-(instancetype)initWithName:(NSString *)name andPrice:(double)price;

+(void)play;
+(instancetype)instance;
+(instancetype)instanceWithName:(NSString *)name andPrice:(double)price;

@end
