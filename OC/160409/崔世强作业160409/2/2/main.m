//
//  main.m
//  2
//
//  Created by qingyun on 16/4/9.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Fraction+MathOps.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Fraction *f1=[[Fraction alloc] init];
        [f1 setFenzi:3];
        [f1 setFenmu:4];
        [f1 show];
        [f1 invert];
    }
    return 0;
}
