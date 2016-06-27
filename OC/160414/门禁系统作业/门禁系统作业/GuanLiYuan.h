//
//  GuanLiYuan.h
//  门禁系统作业
//
//  Created by qingyun on 16/4/14.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GuanLiYuan : NSObject
@property(nonatomic,copy)NSString* gname;
@property(nonatomic,copy)NSString* gmima;
//@property(nonatomic,copy)void (^Block)(int,int);
-(void)gotozhuce;
-(void)caozuo;
-(void)denglu;
@end
