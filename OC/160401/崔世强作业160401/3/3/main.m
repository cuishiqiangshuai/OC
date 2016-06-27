//
//  main.m
//  3
//
//  Created by qingyun on 16/4/4.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Housing.h"
#import "Office.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Housing* a1=[Housing new];
        [a1 setCheng:24 andsetFang:18 andsetyingchi:1000];
        [a1 setWoshi:3 andsetyushi:2];
        [a1 playbuilding];
        Office* a2=[Office new];
        [a2 setCheng:24 andsetFang:18 andsetyingchi:1000];
        [a2 setMeihuoqi:100 andsetNumber:10];
        [a2 playbuilding];
    }
    return 0;
}
