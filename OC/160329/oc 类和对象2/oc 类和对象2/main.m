//
//  main.m
//  oc 类和对象2
//
//  Created by qingyun on 16/3/29.
//  Copyright © 2016年 qingyun. All rights reserved.
//
/****修饰词
 @protected  受保护的，OC默认属性修饰 ，只能被本类和子类访问
 @public 公共的 ，所有地方都可以使用
 @privated 私有的，只可以在本类使用
 @package 一般用于系统库的封装中
 */
#import <Foundation/Foundation.h>
@interface Time:NSObject
{
    @public
    int _hour;
    int _minute;
    int _second;
}
//设置时间的方法（setter）
-(void)setHour:(int)hour;
-(void)setMinute:(int)minute;
-(void)setSecond:(int)second;
//多参的使用
-(void)setHour:(int)hour :(int)minute :(int)second;//参数间用空格隔开  方法名setHour： ： ：
-(void)setHour:(int)hour andMinute:(int)minute andSecond:(int)second;//尽量这样写  方法名 serHour: andMinute: andsecond:
//显示时间
-(void)showtime;
@end
@implementation Time
-(void)showtime
{
    NSLog(@"now is %02d:%o2d:%02d",_hour,_minute,_second);
}
-(void)setHour:(int)hour
{
    _hour=hour;
}
-(void)setMinute:(int)minute
{
    _minute=minute;
}
-(void)setSecond:(int)second
{
    _second=second;
}
//多参实现
-(void)setHour:(int)hour :(int)minute :(int)second
{
    _hour=hour;
    _minute=minute;
    _second=second;
}
-(void)setHour:(int)hour andMinute:(int)minute andSecond:(int)second
{
    _hour=hour;
    _minute=minute;
    _second=second;
}
@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Time *t1=[Time new];
        //OC方式
        //设置属性
        [t1 setHour:16];
        [t1 setMinute:1];
        [t1 setSecond:12];
        //显示
        [t1 showtime];
        //C方式 设置属性 这种方式在以后开发中被弃用了
        t1->_hour=22;
        t1->_minute=22;
        t1->_second=22;
        //读
        NSLog(@"time is %d:%d:%d",t1->_hour,t1->_minute,t1->_second);
    }
    return 0;
}
