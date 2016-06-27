//
//  Platypus.h
//  3
//
//  Created by qingyun on 16/4/9.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "methods.h"
@interface Platypus : NSObject<methods>
//@property(nonatomic,strong)id<methods>delegate;
@property(nonatomic,strong)NSString *name;
-(void)play;
@end
