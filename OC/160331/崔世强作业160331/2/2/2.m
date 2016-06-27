//
//  2.m
//  2
//
//  Created by qingyun on 16/3/31.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "2.h"
//Employee *a1[5];
//int i;
//switch (a1[i])
//{
//    case 0:
//        NSLog(@"")
//        
//}
@implementation Employee
-(void)setName:(char *)name andsetAge:(int)age andsetWages:(double)wages
{
    _name=name;
    _age=age;
    _wages=wages;
}
-(void)show
{
    NSLog(@"雇员的姓名是%s，年龄是%d，工资是%f",_name,_age,_wages);
}
@end

