//
//  Student.h
//  上午一讲
//
//  Created by qingyun on 16/4/11.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BOOK.h"
@interface Student : NSObject
@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)int age;
@property(nonatomic,copy)NSString *sex;
@property(nonatomic,copy)NSString *address;
@property(nonatomic,strong)BOOK *book;
@property(nonatomic,strong)NSMutableArray *names;
-(instancetype)initWithName:(NSString *)name;
@end
