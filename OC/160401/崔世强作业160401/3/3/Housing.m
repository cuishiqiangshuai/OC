//
//  Housing.m
//  3
//
//  Created by qingyun on 16/4/4.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Housing.h"

@implementation Housing
-(void)setWoshi:(int)w andsetyushi:(int)y1
{
    _woshi=w;
    _yushi=y1;
}
-(void)playbuilding
{
    [super playbuilding];
    NSLog(@"%d,%d",_woshi,_yushi);
}
@end
