//
//  xiaoming.h
//  5
//
//  Created by qingyun on 16/4/23.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "buypiao.h"
#import "xiaoqiang.h"

@interface xiaoming : NSObject
-(void)gotomovie;
@property(nonatomic,assign)id<buypiao>delegete;
@property xiaoqiang *buy;
@end
