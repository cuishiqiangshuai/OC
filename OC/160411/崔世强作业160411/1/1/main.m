//
//  main.m
//  1
//
//  Created by qingyun on 16/4/11.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p1=[[Person alloc] init];
        [p1 setValue:@"xiaoming" forKey:@"name"];
        [p1 setValue:@(80) forKey:@"age"];
        [p1 setValue:@"180" forKey:@"height"];
        NSLog(@"%@,%@,%@",[p1 valueForKey:@"name"],[p1 valueForKey:@"age"],[p1 valueForKey:@"height"]);
        
        Student *s1=[Student new];
        [s1 setValue:@"xiaohong" forKeyPath:@"person.name"];
        [s1 setValue:@"25" forKeyPath:@"person.age"];
        [s1 setValue:@"312423" forKey:@"stuID"];
        [s1 setValue:@"34.23" forKey:@"score"];
        NSLog(@"%@,%@",[s1 valueForKey:@"stuID"],[s1 valueForKey:@"score"]);
        NSLog(@"%@,%@",[s1 valueForKeyPath:@"person.name"],[s1 valueForKeyPath:@"person.age"]);
        
    }
    return 0;
}
