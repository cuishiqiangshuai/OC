//
//  main.m
//  面想对象把大象放入冰箱
//
//  Created by qingyun on 16/3/29.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
//先声明冰箱类
@interface Fridge : NSObject
{
    NSString *_name;
    double _tage;//体积
    BOOL _isOpen;//能否打开
}
-(void)setName:(NSString *)name andTage:(double)tage;
-(void)setIsOpen:(BOOL)open;
-(void)openFridge;
-(void)putIn:(NSString *)name;
-(void)clossFridge;
@end
@implementation Fridge
-(void)setName:(NSString *)name andTage:(double)tage
{
    _name=name;
    _tage=tage;
}
-(void)setIsOpen:(BOOL)open
{
    _isOpen=open;
}
-(void)openFridge
{
    if (_isOpen)
    {
        NSLog(@"打开冰箱 %@,%g",_name,_tage);
    }
}
-(void)putIn:(NSString *)name
{
    NSLog(@"把%@放入冰箱 %@,%g",name,_name,_tage);
}
-(void)clossFridge
{
    NSLog(@"关闭冰箱 %@,%g",_name,_tage);
}
@end
@interface Elephant : NSObject
{
    NSString *_name;
}
-(void)eat;
-(void)sleep;
-(void)setName:(NSString *)name;
-(NSString *)getName;
@end
@implementation Elephant
-(void)setName:(NSString *)name
{
    
    _name=name;
}
-(NSString *)getName
{
    return _name;
}
-(void)eat
{
    NSLog(@"%@正在吃草",_name);
}
-(void)sleep
{
    NSLog(@"%@正在睡觉...",_name);
    sleep(10);
}

@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建大象对象
        Elephant *e1=[Elephant new];
        [e1 setName:@"猛犸象"];
        [e1 sleep];
        [e1 eat];
        // 创建冰箱对象
        Fridge *f1=[Fridge new];
        //设置属性
        [f1 setName:@"格力" andTage:300];
        [f1 setIsOpen:YES];//打开属性
        //开始打开冰箱
        [f1 openFridge];
        //放入大象
        [f1 putIn:[e1 getName]];
        //关闭冰箱
        [f1 clossFridge];
    }
    return 0;
}
