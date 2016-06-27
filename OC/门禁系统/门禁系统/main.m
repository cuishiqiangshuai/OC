//
//  main.m
//  门禁系统
//
//  Created by qingyun on 16/4/18.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doors.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Doors *door=[Doors new];
        [door showDoors];
    }
    return 0;
}
