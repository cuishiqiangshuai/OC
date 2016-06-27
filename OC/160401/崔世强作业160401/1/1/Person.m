//
//  Person.m
//  1
//
//  Created by qingyun on 16/4/4.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)setName:(NSString *)name andsetAge:(int)age andsetSex:(NSString *)sex andsetAddress:(NSString *)addrss
{
    _name=name;
    _age=age;
    _sex=sex;
    _address=addrss;
}
-(void)drawPerson
{
    NSLog(@"%@ %d %@ %@",_name,_age,_sex,_address);
}
@end
