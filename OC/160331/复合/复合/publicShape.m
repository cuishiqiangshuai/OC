//
//  publicShape.m
//  复合
//
//  Created by qingyun on 16/3/31.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import "publicShape.h"

@implementation publicShape
+(NSString *)colorNameWithEnum:(shapeColor)color
{
    switch (color) {
        case Blue:
            return @"Blue";
            break;
            case Red:
            return @"Red";
            break;
            case Yellow:
            return @"Yellow";
            break;
            
        default:
            break;
    }
}
@end
