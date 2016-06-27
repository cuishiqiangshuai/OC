//
//  Dog.m
//  多态+id类型
//
//  Created by qingyun on 16/4/13.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Dog.h"

@implementation Dog
-(void)showInfo
{
    NSLog(@"%@,%g",_dname,_price);
}
- (void)dealloc
{
    NSLog(@"%@被释放了....",_dname);
}
-(void)showDog
{
    NSLog(@"%@,%g",_dname,_price);
}
@end
