//
//  main.m
//  3
//
//  Created by qingyun on 16/4/1.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "3.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *a=[Fraction new];
        [a setNumerztor:1 andsetDenominztor:1];
        [a show];
        Fraction *a2=[Fraction FractionWithNumerator:2 andDenominator:5];
        [a2 show];
    }
    return 0;
}
