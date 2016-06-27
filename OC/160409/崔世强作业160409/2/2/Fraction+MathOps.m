//
//  Fraction+MathOps.m
//  2
//
//  Created by qingyun on 16/4/9.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Fraction+MathOps.h"

@implementation Fraction (MathOps)
-(id)invert
{
    return [self class];
}
-(void)show
{
    
    
        NSLog(@"%d/%d",self.fenmu,self.fenzi);
    
}
@end
