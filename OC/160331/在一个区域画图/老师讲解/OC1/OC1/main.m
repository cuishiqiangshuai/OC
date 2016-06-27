//
//  main.m
//  OC1
//
//  Created by qingyun on 16/3/31.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum
{
    KBlue,
    kYellow,
    kGreen
}shapeColor;
typedef struct
{
    int x;
    int y;
    int width;
    int height;
}shapeRect;
@interface Circle : NSObject
{
    shapeRect _rect;
    shapeColor _fillcolor;
}
-(void)setRect:(shapeRect)rect andsetFillcolor:(shapeColor)color;
-(void)drawCircle;
-(NSString *)colorNameWithEnum:(shapeColor)color;
@end
@implementation Circle
-(NSString *)colorNameWithEnum:(shapeColor)color
{
    switch (color)
    {
        case kYellow:
            return @"YellowColor";
            break;
            case KBlue:
            return @"BlueColor";
            break;
            case kGreen:
            return @"GreenColor";
            break;
        default:
            break;
    }
}
-(void)setRect:(shapeRect)rect andsetFillcolor:(shapeColor)color
{
    _rect=rect;
    _fillcolor=color;
}
-(void)drawCircle
{
    NSLog(@"draw a \"Circle\" at(%d,%d,%d,%d) with %@ ",_rect.x,_rect.y,_rect.width,_rect.height,[self colorNameWithEnum:_fillcolor]);
}
@end
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Circle *c1=[Circle new];
        [c1 setRect:(shapeRect){1,2,3,4} andsetFillcolor:kGreen];
        [c1 drawCircle];
    }
    return 0;
}
