//
//  Person.m
//  1
//
//  Created by qingyun on 16/4/11.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Person.h"
@interface Person()
@property(nonatomic,copy)NSString *height;
@end
@implementation Person
-(NSString *)description
{
    return [NSString stringWithFormat:@"%@,%d,%@",_name,_age,_height];
}
@end
