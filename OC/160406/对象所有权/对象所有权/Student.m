//
//  Student.m
//  对象所有权
//
//  Created by qingyun on 16/4/7.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Student.h"

@implementation Student
-(void)setStuID:(NSString *)ID
{
    _stuID=ID;
}
-(void)dealloc
{
    NSLog(@"编号为%@的学生被释放了...",_stuID);
    [super dealloc];
}
@end
