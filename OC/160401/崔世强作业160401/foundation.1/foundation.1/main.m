//
//  main.m
//  foundation.1
//
//  Created by qingyun on 16/4/4.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Teacher.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *a=[[NSArray alloc] initWithObjects:@"li",@"wang",@"hao",@"zhoa",@"zhou", nil];
        NSLog(@"a==>%lu",(unsigned long)[a indexOfObject:@"hao"]);
        NSLog(@"%@",[a up]);
    }
    return 0;
}
