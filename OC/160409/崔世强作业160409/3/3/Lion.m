//
//  Lion.m
//  3
//
//  Created by qingyun on 16/4/9.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Lion.h"

@implementation Lion
//-(void)play
//{
//    NSLog(@"%@",self);
//    if ([_delegate respondsToSelector:@selector(breed)])
//    {
//        [_delegate breed];
//    }
//    if ([_delegate respondsToSelector:@selector(eating)])
//    {
//        [_delegate eating];
//    }
//}
-(void)breed
{
    NSLog(@"%@是胎生",_name);
}
-(void)eating
{
    NSLog(@"%@是肉食动物",_name);
}
@end
