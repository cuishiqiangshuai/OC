//
//  3.m
//  3
//
//  Created by qingyun on 16/4/1.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "3.h"

@implementation Fraction
-(void)setNumerztor:(int)n andsetDenominztor:(int)d
{
    _numerator=n;
    _denominator=d;
}
-(void)show
{
    NSLog(@"%d/%d",_numerator,_denominator);
}
+(Fraction *)FractionWithNumerator:(int)n andDenominator:(int)d
{
    Fraction *a1=[Fraction new];
    [a1 setNumerztor:n andsetDenominztor:d];
    return a1;
}

@end
