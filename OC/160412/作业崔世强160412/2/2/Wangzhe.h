//
//  Wangzhe.h
//  2
//
//  Created by qingyun on 16/4/13.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef  int (^Blockleixing)(int,int);
@interface Wangzhe : NSObject
@property(nonatomic,copy)int (^block4)(int ,int);
@property(nonatomic,copy)Blockleixing block5;
-(instancetype)initWithBlock:(Blockleixing)blk;
@end
