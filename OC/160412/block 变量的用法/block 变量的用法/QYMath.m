//
//  QYMath.m
//  block 变量的用法
//
//  Created by qingyun on 16/4/12.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "QYMath.h"

@implementation QYMath
-(instancetype)initWithBlock:(myBlock2)blk
{
    if (self=[super init])
    {
        _block2=blk;
    }
    return self;
}
-(instancetype)init
{
    if (self=[super init])
    {
        _myBlock1=^int(){
            return _firstNum+_secondNum;
        };
    }
    return self;
}
@end
