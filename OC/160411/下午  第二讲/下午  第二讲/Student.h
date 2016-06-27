//
//  Student.h
//  下午  第二讲
//
//  Created by qingyun on 16/4/12.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
@property(nonatomic,assign)double score;
-(instancetype)initWithScore:(double)score;
@end
