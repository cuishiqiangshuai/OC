//
//  xiaoming.m
//  5
//
//  Created by qingyun on 16/4/23.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "xiaoming.h"

@class xiaoqiang;
@implementation xiaoming
-(void)gotomovie
{
    NSLog(@"I want to look at movie");
    if ([_delegete respondsToSelector:@selector(buypiao)])
    {
        [_delegete buypiao];
    }
    
    if (_buy.piaoshu>=10)
    {
        NSLog(@"去");
    }
    else
    {
        NSLog(@"票太少了，不去了");
    }
}

@end
