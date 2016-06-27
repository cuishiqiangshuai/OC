//
//  Student.m
//  上午一讲
//
//  Created by qingyun on 16/4/11.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Student.h"
@interface Student()//，声明一个类扩展，建一个私有属性
{
    double _score;
}
@property(copy,nonatomic)NSString *stuID;
@property(nonatomic,readonly)NSString *telephone;//设置私有而且只读属性
@end
@implementation Student
-(NSString *)description
{
    return [NSString stringWithFormat:@"%@,%d,%@,%@",_name,_age,_sex,_address];
}
//懒加载  当外界调用setter方法时自动调用此方法
-(BOOK *)book
{
    if (!_book)//没有内存
    {
        _book=[BOOK new];
    }
    return _book;
}
//如果设置的健对应的值为空
-(void)setNilValueForKey:(NSString *)key
{
    NSLog(@"值为空，下次请细心...");
}
-(instancetype)initWithName:(NSString *)name
{
    if (self=[super init])
    {
        _name=name;
    }
    return self;
}
-(NSMutableArray *)names
{
    if (_names==nil)
    {
        _names=[NSMutableArray array];
    }
    return _names;
}
@end
