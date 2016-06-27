//
//  Student.h
//  下午三
//
//  Created by qingyun on 16/4/12.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)int age;
@property(assign,nonatomic)double height;
-(instancetype)initWithName:(NSString *)name andAge:(int)age;
@end
