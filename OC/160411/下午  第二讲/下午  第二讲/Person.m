//
//  Person.m
//  下午  第二讲
//
//  Created by qingyun on 16/4/12.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Person.h"

@implementation Person
-(Student *)student
{
    if (_student==nil)
    {
        _student=[Student new];
    }
    return _student;
}
-(instancetype)initWithDic:(NSDictionary *)dic
{
    if (self=[super init])
    {
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;
}
@end
