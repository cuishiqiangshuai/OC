//
//  main.m
//  继承
//
//  Created by qingyun on 16/4/1.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Circle.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Circle *c1=[Circle new];
        //调用父类的方法
        [c1 setFillColor:kBlue andRect:(shapeRect){1,2,3,4}];
        //调用子类自己的方法
        [c1 setRadius:5.6];
        //如果子类重写了父类的方法，则会覆盖父类的方法
        [c1 drawShape];
    }
    return 0;
}
