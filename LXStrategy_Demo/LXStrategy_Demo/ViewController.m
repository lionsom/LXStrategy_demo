//
//  ViewController.m
//  LXStrategy_Demo
//
//  Created by linxiang on 2017/6/1.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import "ViewController.h"

#import "FinancyStrategy.h"

#import "IFinancyStrategy.h"
#import "AlipayFinancyStrategy.h"
#import "YooliFinancyStrategy.h"
#import "FinancyContext.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //原始 案例
    FinancyStrategy * financy_simple = [[FinancyStrategy alloc]init];
    float money_simple = [financy_simple financyWithMonth:6 Money:100000 type:FinancyType_Yooli];
    NSLog(@"AAAAA = %f",money_simple);
    
    //策略模式的案例  有上下文
    id<IFinancyStrategy> alipayFinancy = [[AlipayFinancyStrategy alloc] init];
    FinancyContext * context = [[FinancyContext alloc] initWithFinancy:alipayFinancy];
    float money = [context financyWithMonth:6 money:10000];
    NSLog(@"BBBBBBB == %f",money);
    
    id<IFinancyStrategy> alipayFinancy_1 = [[AlipayFinancyStrategy alloc] init];
    float money_1 = [alipayFinancy_1 financyWithMonth:6 money:10000];
    NSLog(@"CCCCCC == %f",money_1);
}



-(void)setFinancyStrategy:(id<IFinancyStrategy>)financy {
    [financy financyWithMonth:6 money:10000];
}










- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
