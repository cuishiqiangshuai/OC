//
//  Person1.h
//  block
//
//  Created by qingyun on 16/4/16.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person1 : NSObject
@property(nonatomic,copy)void(^movieBlock)(NSString *);
-(void)takemovie;
@end
