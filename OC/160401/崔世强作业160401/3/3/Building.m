//
//  Building.m
//  3
//
//  Created by qingyun on 16/4/4.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Building.h"

@implementation Building
-(void)setCheng:(int)c andsetFang:(int)f andsetyingchi:(double)y
{
    _cheng=c;
    _fang=f;
    _yingchi=y;
}
-(void)playbuilding
{
    NSLog(@"%d,%d,%lf",_cheng,_fang,_yingchi);
}
@end
