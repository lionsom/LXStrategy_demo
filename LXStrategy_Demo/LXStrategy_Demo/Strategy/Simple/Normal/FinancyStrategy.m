//
//  FinancyStrategy.m
//  LXStrategy_Demo
//
//  Created by linxiang on 2017/6/21.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import "FinancyStrategy.h"

@implementation FinancyStrategy

-(float)financyWithMonth:(float)month Money:(float)money type:(FinancyType)type{
    
    switch (type) {
        case FinancyType_Alipay:
            return [self alipayfinancyWithMonth:month Money:money];
            break;
        case FinancyType_Yooli:
            return [self yoolifinancyWithMonth:month Money:money];
            break;
        default:
            break;
    }
    
    
    return 0;
}

-(float)alipayfinancyWithMonth:(float)month Money:(float)money {
    
    if (month == 6) {
        return money + money * 0.03f/12 * 6;
    }else if (month == 12) {
        return money + money * 0.03f/12 * 12;
    }else if (month == 24) {
        return money + money * 0.03f/12 * 24;
    }else {
        //抛出异常，不处理
        @throw [[NSException alloc] initWithName:@"参数错误" reason:@"您输入的月份有误，请重新输入" userInfo:nil];
    }
    return 0;
}

-(float)yoolifinancyWithMonth:(float)month Money:(float)money {
   
    if (month == 3) {
        return money + money * 0.07f/12 * 3;
    }else if (month == 6) {
        return money + money * 0.08f/12 * 6;
    }else if (month == 12) {
        return money + money * 0.095f/12 * 12;
    }else if (month == 24) {
        return money + money * 0.105f/12 * 24;
    }else {
        //抛出异常，不处理
        @throw [[NSException alloc] initWithName:@"参数错误" reason:@"您输入的月份有误，请重新输入" userInfo:nil];
    }

    return 0;
}




@end




















