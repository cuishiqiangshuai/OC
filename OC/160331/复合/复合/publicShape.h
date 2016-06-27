//
//  publicShape.h
//  复合
//
//  Created by qingyun on 16/3/31.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum
{
    Red,
    Blue,
    Yellow
}shapeColor;
typedef struct
{
    int x,y,width,height;
}shapeRect;
@interface publicShape : NSObject
+(NSString *)colorNameWithEnum:(shapeColor)color;
@end
