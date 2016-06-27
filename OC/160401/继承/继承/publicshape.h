//
//  publicshape.h
//  继承
//
//  Created by qingyun on 16/4/1.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum
{
    kRed,
    kBlue,
    kYellow
}shapeColor;
typedef struct
{
    int x,y,width,height;
}shapeRect;
@interface publicshape : NSObject
{
    shapeColor _fillcolor;
    shapeRect _rect;
}
-(void)setFillColor:(shapeColor)color
            andRect:(shapeRect)rect;
-(void)drawShape;
+(NSString *)colorNameWithEnum:(shapeColor)color;
@end
