//
//  Circle.m
//  继承
//
//  Created by qingyun on 16/4/1.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Circle.h"

@implementation Circle
//因为调用父类的打印，只是打印图形， 并没有说明具体图形， 所以可以重写父类的方法
-(void)drawShape
{
    [super drawShape];
    NSLog(@"with radius is %g with Circle",_radius);
}
//实现子类自己的方法
-(void)setRadius:(double)r
{
    _radius=r;
}
@end
