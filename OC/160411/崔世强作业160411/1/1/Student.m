//
//  Student.m
//  1
//
//  Created by qingyun on 16/4/11.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Student.h"
@interface Student()
@property(nonatomic,assign)int stuID;
@property(nonatomic,assign)double score;
@end
@implementation Student
-(Person *)person//当需要调它时，才给他分配内存，所以需要懒加载
{
    if (!_person)
    {
        _person=[Person new];
    }
    return _person;
}
@end
