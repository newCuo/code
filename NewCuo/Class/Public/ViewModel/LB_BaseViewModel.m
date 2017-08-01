//
//  LB_BaseViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/23.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_BaseViewModel.h"

@interface LB_BaseViewModel()

@property(weak,nonatomic)BaseViewController *viewController;

@property(weak,nonatomic)UIView *LB_View;

@end

@implementation LB_BaseViewModel
//model初始化
-(id)initWithViewController:(BaseViewController*)ViewController{
    
    self = [super init];
    if (self) {
        self.viewController = ViewController;
        self.LB_View = self.viewController.view;
        [self initUI];
        [self bindingEvent];
        [self NetWorking];
        [self initConfiguration];
    }
    return self;
}
//初始化ui
-(void)initUI{
    
    
    
    
}
//事件绑定
-(void)bindingEvent{
    
    
    
}
//网络请求
-(void)NetWorking{
    
    
    
}
//配置
-(void)initConfiguration{
    
    
    
}


@end
