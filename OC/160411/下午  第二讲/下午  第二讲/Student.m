//
//  Student.m
//  下午  第二讲
//
//  Created by qingyun on 16/4/12.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Student.h"

@implementation Student
-(instancetype)initWithScore:(double)score
{
    if (self=[super init])
    {
        _score=score;
    }
    return self;
}
@end
