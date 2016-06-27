//
//  Dog.m
//  强引用
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Dog.h"

@implementation Dog
-(void)setName:(NSString *)name
{
    _name=name;
}
-(NSString *)name
{
    return _name;
}
-(void)setFriend:(Dog *)dog
{
    _friend=dog;
}
-(void)dealloc
{
    NSLog(@"%@被释放了..%@",_name,self);
}
-(void)play
{
    NSLog(@"%@ is play hahahhaha",_name);
}
+(Dog *)sharedDog
{
    __autoreleasing Dog *dog=[Dog new];//ARC中在返回对象的方法中，自动会将对象设置为自动释放  __autoreleasing可以省略
    return dog;
}
+(Dog *)dogWithName:(NSString *)name
{
    Dog *dog=[Dog new];
    [dog setName:name];
    return dog;
}
@end
