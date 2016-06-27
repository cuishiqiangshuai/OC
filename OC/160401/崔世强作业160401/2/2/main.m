//
//  main.m
//  2
//
//  Created by qingyun on 16/4/4.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "car.h"
#import "truck.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        car *a1=[car new];
        [a1 setWheels:4 andsetWeight:1000];
        [a1 setPassenger_load:5];
        [a1 drawvehicle];
        truck *a2=[truck new];
        [a2 setWheels:10 andsetWeight:2000];
        [a2 setPassenger_load:3 andsetpayload:200000000];
        [a2 drawvehicle];
    }
    return 0;
}
