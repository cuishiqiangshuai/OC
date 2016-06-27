//
//  main.m
//  面向对象 编程绘制图形
//
//  Created by qingyun on 16/3/30.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface Circle :NSObject
{
    NSString*  _color;
    NSString* _bounds;
}
-(void)setColor:(NSString *)color andsetBounds:(NSString *)bounds;
-(void)draw;
@end
@implementation Circle
-(void)setColor:(NSString *)color andsetBounds:(NSString *)bounds
{
    _color=color;
    _bounds=bounds;
}
-(void)draw
{
    NSLog(@"drawing a circle at %@ in %@",_bounds,_color);
}
@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Circle *c=[Circle new];
        [c setColor:@"red" andsetBounds:@"(0,0,12,23)"];
        [c draw];
    }
    return 0;
}
