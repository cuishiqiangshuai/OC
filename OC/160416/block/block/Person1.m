//
//  Person1.m
//  block
//
//  Created by qingyun on 16/4/16.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Person1.h"

@implementation Person1
-(void)takemovie
{
    NSString *info=[NSString stringWithFormat:@"%@,%g,%d",self,[self moviePrice],[self movieCount]];
    _movieBlock(info);
}
-(double)moviePrice
{
    return 35;
}
-(int)movieCount
{
    return 11;
}
@end
