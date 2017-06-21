//
//  FinancyStrategy.h
//  LXStrategy_Demo
//
//  Created by linxiang on 2017/6/21.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import <Foundation/Foundation.h>

//策略的枚举类型的选择
typedef NS_ENUM(NSInteger, FinancyType){
    FinancyType_Alipay,
    FinancyType_Yooli,
};


//理财策略
@interface FinancyStrategy : NSObject


-(float)financyWithMonth:(float)month Money:(float)money type:(FinancyType)type;


-(float)alipayfinancyWithMonth:(float)month Money:(float)money;

-(float)yoolifinancyWithMonth:(float)month Money:(float)money;


@end
