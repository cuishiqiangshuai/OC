//
//  3.h
//  3
//
//  Created by qingyun on 16/4/1.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
{
    int _numerator;
    int _denominator;
}
-(void)setNumerztor:(int)n andsetDenominztor:(int)d;
-(void)show;
+(Fraction *)FractionWithNumerator:(int)n andDenominator:(int)d;
@end
