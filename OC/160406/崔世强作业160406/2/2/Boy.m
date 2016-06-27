//
//  Boy.m
//  2
//
//  Created by qingyun on 16/4/6.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Boy.h"

@implementation Boy
-(void)setAge:(int)age
{
    _age=age;
}


-(void)setBoygirl:(Girl *)bg
{
    if (_boygirl!=bg)
    {
        [_boygirl release];
        _boygirl=[bg retain];
    }
}


-(void)dealloc
{
    NSLog(@"boy:%d岁的名叫%@的boy的%@的girl被释放了...",_age,_name,_boygirl);
    [_boygirl release];
    _boygirl=nil;
    [super dealloc];
    
}
-(void)playboyInfo
{
    NSLog(@"%d,%@,%@",_age,_name,_boygirl);
}
@end
