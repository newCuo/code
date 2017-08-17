//
//  LoginTitleViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/21.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LoginTitleViewModel.h"
#import "NavigationTitleView.h"
#import "UserModel.h"

@interface LoginTitleViewModel();

@property(strong,nonatomic)NavigationTitleView *titleView;

@end

@implementation LoginTitleViewModel


-(void)initUI{
    
    self.titleView = [[NavigationTitleView alloc]initWithFrame:CGRectMake(0, 0, KSCREENWIDTH, 64)];
    [self.viewController.view addSubview:self.titleView];
    
    self.titleView.titleLab.text = @"登录";
    [self.titleView.leftBtn setTitle:@"取消" forState:UIControlStateNormal];
    
    
}

-(void)bindingEvent{
    
    
    
    
    @weakify(self);
    [[self.titleView.leftBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(id x) {
        @strongify(self);
        [self.viewController dismissViewControllerAnimated:YES completion:nil];
        
    }];

    
    
}

@end
