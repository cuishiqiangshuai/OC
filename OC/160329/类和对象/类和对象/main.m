//
//  main.m
//  类和对象
//
//  Created by qingyun on 16/3/29.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
//@interface表示类的声明！ 声明一个接口
    @interface Person :NSObject//声明了一个类Person继承自NSObject（Person是声明的类名，：表示继承，NSObject是父类）
{
    NSString* _name;
    int _age;
    double _height;
}
//类的成员变量（属性!)
//声明行为（方法）
-(void)eat:(NSString *)food;//-表示多想方法（实例方法）， 函数无返回值，函数名eat
-(void)sleep;//方法名 sleep
-(void)play;
//带参数方法的声明
//1.设置属性的方法（setter）
-(void)setName:(NSString *)name;//：表示参数，有几个冒号表示有几个参数，参数的类型与成员变量保持一致！ 方法名 setName：；
-(void)setAge:(int)age;
-(void)setHeight:(double)height;
//2. 获得属性的方法getter 需要返回值！ 返回值的类型就是属性的类型
-(NSString *)getName;
-(int)getAge;
-(double)getHeight;
@end//表示类的声明结束  不可省略
  //@implementation表示方法的具体实现
@implementation Person//实现Person 类里面的方法具体是干什么
-(void)eat:(NSString *)food
{
    NSLog(@"%@ is eatting %@",_name,food);
}
-(void)sleep
{
    NSLog(@" is sleeping");
}
-(void)play
{
    NSLog(@"is da dou dou");
}
//带参数方法的实现
//1.setter方法的实现  用形参给属性赋值
-(void)setName:(NSString *)name
{
    _name=name;
}
-(void)setAge:(int)age
{
    _age=age;
}
-(void)setHeight:(double)height
{
    _height=height;
}
//2.getter 方法的实现  直接返回成员变量
-(NSString *)getName
{
    return _name;
}
-(int)getAge
{
    return _age;
}
-(double)getHeight
{
    return _height;
}
@end
int main(int argc, const char * argv[]) {
    {//创建对象【】表示发送消息，固定格式【类名/对象名  方法名】；
    Person* p1=[Person new];//new表示创建一个对象
        //设置属性
    [p1 setName:@"小明"];
    [p1 setAge:21];
    [p1 setHeight:178];
        //方法的调用
    [p1 eat:@"面包"];
    [p1 sleep];
    [p1 play];
        //获得属性
    NSLog(@"name is %@,age is %d,height is %g",[p1 getName],[p1 getAge],[p1 getHeight]);
         }
    return 0;
}
