//
//  main.m
//  崔世强作业160408
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "AllWeatherTire.h"
#import "Engine.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Engine *e1=[[Engine alloc] init];
        [e1 setName:@"菜油" andsetPower:1000];
        Tire *t1=[[Tire alloc]initWithBrond:@"米其林" andPreesure:1000 andTireDeepth:5];
        AllWeatherTire *a1=[[AllWeatherTire alloc]init];
        a1=[a1 initWithBrond:@"米其林" andPreesure:1000 andTireDeepth:10];
        a1=[a1 initWithRainHandling:@"rain"];
        AllWeatherTire *a2=[[AllWeatherTire alloc]init]
        ;
        a2=[a2 initWithBrond:@"米其林" andPreesure:1000 andTireDeepth:3];
        a2=[a2 initWithSnowHandling:@"snow"];
        Car *c1=[[Car alloc] initWithBrand:@"路虎" andPrice:10000000 andTires:a1 andEngine:e1];
        Car *c2=[[Car alloc]initWithBrand:@"打本" andPrice:1000000 andTires:a2 andEngine:e1];
        NSLog(@"e1==%@",e1);
        NSLog(@"t1==%@",t1);
        NSLog(@"a1==%@",a1);
        NSLog(@"a2==%@",a2);
        NSLog(@"c1==%@",c1);
        NSLog(@"c2==%@",c2);
        
    }
    return 0;
}
