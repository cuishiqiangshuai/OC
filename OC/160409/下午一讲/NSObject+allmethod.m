//
//  NSObject+allmethod.m
//  下午一讲
//
//  Created by qingyun on 16/4/9.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "NSObject+allmethod.h"

@implementation NSObject (allmethod)
-(void)eat
{
    NSLog(@"%@ eating ...",self);
}
-(void)play
{
    NSLog(@"%@ piaying...",self);
}
-(void)sleep
{
    NSLog(@"%@ sleeping....",self);
}
@end
