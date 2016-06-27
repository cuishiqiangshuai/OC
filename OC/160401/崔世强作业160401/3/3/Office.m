//
//  Office.m
//  3
//
//  Created by qingyun on 16/4/4.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Office.h"

@implementation Office
-(void)setMeihuoqi:(int)m andsetNumber:(int)n
{
    _meihuoqi=m;
    _number=n;
}
-(void)playbuilding
{
    [super playbuilding];
    NSLog(@"%d,%d",_meihuoqi,_number);
}
@end
