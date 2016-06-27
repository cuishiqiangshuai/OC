//
//  Dog.h
//  强引用
//
//  Created by qingyun on 16/4/8.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject
{
    NSString *_name;
    __weak Dog *_friend;//弱引用解决循环强引用造成的内存无法释放的问题
}
-(void)setName:(NSString *)name;
-(NSString *)name;//这是get方法
-(void)setFriend:(Dog *)dog;
-(void)play;
+(Dog *)sharedDog;
+(Dog *)dogWithName:(NSString *)name;
@end
