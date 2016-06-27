//
//  publicshape.m
//  继承
//
//  Created by qingyun on 16/4/1.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "publicshape.h"

@implementation publicshape
-(void)setFillColor:(shapeColor)color andRect:(shapeRect)rect
{
    _fillcolor=color;
    _rect=rect;
}
-(void)drawShape
{
    NSLog(@"draw a shape at(%d,%d,%d,%d) with %@",_rect.x,_rect.y,_rect.width,_rect.height,[[self class]colorNameWithEnum:_fillcolor]);
}
+(NSString *)colorNameWithEnum:(shapeColor)color
{
    switch (color) {
        case kBlue:
            return @"BlueColor";
            break;
            case kRed:
            return @"RedColor";
            break;
            case kYellow:
            return @"YellowColor";
            break;
            
        default:
            break;
    }
}

@end
