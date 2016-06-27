//
//  main.m
//  4
//
//  Created by qingyun on 16/4/4.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "employee.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        employee* a1=[employee new];
        [a1 setMainager:@" xiaoming" andsetTechnician:@"xiaoli" andsetSaleman:@"xiaohong" andsetSalemanager:@"xiaozhao"];
        [a1 setBianhao:<#(int)#> andsetName:<#(NSString *)#> andsetNumber:<#(double)#>]
    }
    return 0;
}
