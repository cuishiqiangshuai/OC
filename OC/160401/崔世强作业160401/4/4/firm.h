//
//  firm.h
//  4
//
//  Created by qingyun on 16/4/4.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface firm : NSObject
{
    NSString* _mainager;
    NSString* _technician;
    NSString* _saleman;
    NSString* _salemanager;
}
-(void)setMainager:(NSString *)m andsetTechnician:(NSString *)t andsetSaleman:(NSString *)s andsetSalemanager:(NSString *)s1;
-(void)drawFirm;
@end
