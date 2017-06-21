//
//  FinancyContext.h
//  LXStrategy_Demo
//
//  Created by linxiang on 2017/6/21.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IFinancyStrategy.h"

// 策略上下文
@interface FinancyContext : NSObject

- (instancetype)initWithFinancy:(id<IFinancyStrategy>)financy;

-(float)financyWithMonth:(float)month money:(float)money;

@end
