//
//  main.m
//  面向过程 在指定区域用不同颜色画出三种图案
//
//  Created by qingyun on 16/3/30.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
//通过枚举指定可以绘制的图形形状
typedef enum
{
    kCircle,
    kRectangle,
    kOblateSpheroid
}ShapeType;
//定义绘制形状时用的颜色
typedef enum {
    kRedColor,
    kGreenColor,
    kBlueColor
}ShapeColor;
//用结构描述一个绘制形状的矩形区域
typedef struct {
    int x,y,width,height;
}ShapeRect;
//再用一个结构把所有内容结合起来，描绘一个形状
typedef struct {
    ShapeType type;
    ShapeColor fillColor;
    ShapeRect bounds;
}Shape;
//负责转换传入的颜色的值
NSString *colorName(ShapeColor colorName)
{
    switch (colorName) {
        case kRedColor:
            return @"red";
            break;
        case kGreenColor:
            return @"green";
            break;
        case kBlueColor:
            return @"blue";
            break;
        default:
            break;
    }
    return @"no clue";
}
//输出区域的形状和颜色
void drawCircle (ShapeRect bounds,ShapeColor fillColor)
{
    NSLog(@"drawing a circle at (%d %d %d %d)in %@",bounds.x,bounds.y,bounds.width,bounds.height,colorName(fillColor));
}
void drawRectangle (ShapeRect bounds,ShapeColor fillColor)
{
    NSLog(@"drawing a rectangle at (%d %d %d %d) in %@",bounds.x,bounds.y,bounds.width,bounds.height,colorName(fillColor));
}
void drawOblateSpheroid (ShapeRect bounds,ShapeColor fillColor)
{
    NSLog(@"drawing a oblateSpheroid at (%d %d %d %d) in %@",bounds.x,bounds.y,bounds.width,bounds.height,colorName(fillColor));
}
//调用函数 输出画的图形和颜色的参数
void drawShapes(Shape shapes[],int count)
{
    int i;
    for (i=0; i<count; i++) {
        switch (shapes[i].type) {
            case kCircle:
                drawCircle (shapes[i].bounds,shapes[i].fillColor);
                break;
                case kRectangle:
                drawRectangle (shapes[i].bounds,shapes[i].fillColor);
                break;
                case kOblateSpheroid:
                drawOblateSpheroid (shapes[i].bounds,shapes[i].fillColor);
                break;
                default:
                break;
        }
    }
}
int main(int argc, const char * argv[]) {
    {
        //声明一个绘制图形形状的区域的数组
        Shape shapes[3];
        
        ShapeRect rect0={0,0,10,30};
        shapes[0].type=kCircle;//初始化要绘制的形状
        shapes[0].fillColor=kRedColor;//初始化颜色
        shapes[0].bounds=rect0;//初始化区域
        
        ShapeRect rect1={30,40,50,60};
        shapes[1].type=kRectangle;
        shapes[1].fillColor=kGreenColor;
        shapes[1].bounds=rect1;
        
        ShapeRect rect2={15,18,37,29};
        shapes[2].type=kOblateSpheroid;
        shapes[2].fillColor=kBlueColor;
        shapes[2].bounds=rect2;
        
        drawShapes(shapes,3);//调用draw函数绘制图形
        
    }
    return 0;
}
