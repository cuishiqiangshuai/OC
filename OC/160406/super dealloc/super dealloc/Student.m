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
    if (_stuID!=ID)
    {
        [_stuID release];
        _stuID=[ID retain];
    }
}
-(void)dealloc
{
    NSLog(@"编号为%@的学生被释放了...",_stuID);
    [_stuID release];
    _stuID=nil;
    [super dealloc];//应该先释放本类的内存  在去释放父类继承过来的属性内存
}
@end
