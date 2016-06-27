//
//  Student.m
//  多态+id类型
//
//  Created by qingyun on 16/4/13.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Student.h"

@implementation Student
-(void)showStudent
{
    NSLog(@"Student info.....");
}
+(void)showStudentClass
{
    NSLog(@"%@",[self class]);
}
@end
