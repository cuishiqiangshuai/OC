//
//  Boss.m
//  block
//
//  Created by qingyun on 16/4/16.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Boss.h"

@implementation Boss
-(void)want:(Person1 *)p0
{
    NSLog(@"%@",self);
    p0.movieBlock=^void(NSString *str){
        NSLog(@"%@",str);
    };
}
@end
