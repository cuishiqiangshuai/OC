//
//  Wangzhe.m
//  2
//
//  Created by qingyun on 16/4/13.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Wangzhe.h"

@implementation Wangzhe
-(instancetype)init
{
    if (self=[super init])
    {
        _block4=^int(int a,int b){
            NSLog(@"block4===%d",a+b);
            return a+b;
        };
    }
    return self;
}
-(instancetype)initWithBlock:(Blockleixing)blk
{
    if (self=[super init])
    {
        _block5=blk;
    }
    return self;
}
@end
