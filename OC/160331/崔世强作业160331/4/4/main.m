//
//  main.m
//  4
//
//  Created by qingyun on 16/4/1.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "4.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Teacher *a1=[Teacher new];
        [a1 setTName:@"xiaoming" andsetTAge:45 andsetTSex:@"男" andsetTSpeciality:@"haha"];
        [a1 showTeacher];
        Student *a2=[Student new];
         [a2 setSName:@"xiaohong" andsetSAge:12 andsetSSex:@"女" andsetSSpeciality:@"hehe"];
        [a2 showStudent];
    }
    return 0;
}
