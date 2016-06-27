//
//  main.m
//  门禁系统作业
//
//  Created by qingyun on 16/4/14.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GuanLiYuan.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        GuanLiYuan *g1=[[GuanLiYuan alloc]init];
        [g1 gotozhuce];
        [g1 denglu];
        [g1 caozuo];
    }
    return 0;
}
