//
//  main.m
//  1
//
//  Created by qingyun on 16/4/9.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Student+Find.h"
#import "Student+English.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *s1=[[Student alloc] init];
        [s1 setName:"Wang Xiaoming"];
        [s1 chazhao:"Wang Xiaoming"];
        [s1 gai];
    }
    return 0;
}
