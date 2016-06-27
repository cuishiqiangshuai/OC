//
//  Circle.m
//  复合
//
//  Created by qingyun on 16/3/31.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "Circle.h"
#import "publicShape.h"
@implementation Circle
-(void)setFillColor:(shapeColor)color
andsetRect:(shapeRect)rect
{
    _fillcolor=color;
    _rect=rect;
}
-(void)drawCircle
{
    NSLog(@"draw a circle at(%d,%d,%d,%d) with %@",_rect.x,_rect.y,_rect.width,_rect.height,[publicShape colorNameWithEnum:_fillcolor]);
}
@end
