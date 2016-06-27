//
//  main.m
//  复合
//
//  Created by qingyun on 16/3/31.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Circle.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Circle *c1=[Circle new];
        [c1 setFillColor:Red andsetRect:(shapeRect){1,2,3,4}];
        [c1 drawCircle];
    }
    return 0;
}
