//
//  IFinancyStrategy.h
//  LXStrategy_Demo
//
//  Created by linxiang on 2017/6/21.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import <Foundation/Foundation.h>

//策略接口
@protocol IFinancyStrategy <NSObject>

//定义策略方法（不需要去指定类型）
-(float)financyWithMonth:(float)month money:(float)money;

@end
