//
//  Person.m
//  多态+id类型
//
//  Created by qingyun on 16/4/13.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)showInfo
{
    NSLog(@"%@,%d",_name,_age);
}
- (void)dealloc
{
    NSLog(@"%@被释放了....",_name);
}
+(void)showClass
{
    NSLog(@"%@",[self class]);
}
@end
