//
//  main.m
//  1
//
//  Created by qingyun on 16/4/4.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student* a1=[Student new];
        Teacher* a2=[Teacher new];
        [a1 setName:@"小明" andsetAge:23 andsetSex:@"男" andsetAddress:@"郑州"];
        [a1 setNumber:001 andsetClass:1 andsetProfessional:@"数学" andsetMark:100];
        [a1 drawPerson];
        [a2 setName:@"小明" andsetAge:23 andsetSex:@"男" andsetAddress:@"郑州"];
        [a2 setTnumber:2 andsetTitle:@"教授" andsetWages:50000];
        
        [a2 drawPerson];
    }
    return 0;
}
