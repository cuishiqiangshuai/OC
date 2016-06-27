//
//  employee.m
//  4
//
//  Created by qingyun on 16/4/4.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "employee.h"

@implementation employee
-(void)setBianhao:(int)b andsetName:(NSString *)n andsetNumber:(double)n1
{
    _bianhao=b;
    _name=n;
    _number=n1;
}
-(void)drawFirm
{
    [super drawFirm];
    NSLog(@"%d,%@,%lf",_bianhao,_name,_number);
}
@end
