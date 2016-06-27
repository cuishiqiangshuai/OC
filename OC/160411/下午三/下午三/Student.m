//
//  Student.m
//  下午三
//
//  Created by qingyun on 16/4/12.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Student.h"

@implementation Student
-(instancetype)initWithName:(NSString *)name andAge:(int)age
{
    if (self=[super init])
    {
        _name=name;
        _age=age;
    }
    return self;
}
-(NSString *)description
{
    return [NSString stringWithFormat:@"%@,%d,%g",_name,_age,_height];
}
@end
