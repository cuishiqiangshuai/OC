//
//  main.m
//  1
//
//  Created by qingyun on 16/3/31.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface aPoint :NSObject
{
    int _point1;
    int _point2;
}
-(void)setPoint1:(int)point3 andsetPoint2:(int)point4;
@end
@implementation aPoint
-(void)setPoint1:(int)point3 andsetPoint2:(int)point4
{
    _point1=point3;
    _point2=point4;
    NSLog(@"%d,%d",_point1,_point2);

}
@end
@interface Circle :NSObject
{
    aPoint *_point5;
    int _radius;
}
-(void)setPoint5:(aPoint *)point6 andsetRadius:(int)r;
-(double)circulararea;
-(void)circumference;
@end
@implementation Circle

-(void)setPoint5:(aPoint *)point6 andsetRadius:(int)r
{
    _point5=point6;
    _radius=r;
    NSLog(@"%@,%d",_point5,_radius);
}
-(double)circulararea
{
    double a=3.14*_radius*_radius;
    return a;
    //NSLog(@"%lf",(3.14*_radius*_radius));
}
-(void)circumference
{
    NSLog(@"%lf",(2*3.14*_radius));
}
@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        aPoint *b1=[aPoint new];
        [b1 setPoint1:1 andsetPoint2:2];
        Circle *a1=[Circle new];
        [a1 setPoint5:b1 andsetRadius:5];
        [a1 circumference];
        [a1 circulararea];
        NSLog(@"%f",[a1 circulararea]);
    }
    return 0;
}
