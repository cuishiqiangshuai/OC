//
//  Platypus.m
//  3
//
//  Created by qingyun on 16/4/9.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Platypus.h"

@implementation Platypus
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
    NSLog(@"%@卵生",_name);
}
-(void)eating
{
    NSLog(@"%@杂食动物",_name);
}
@end
