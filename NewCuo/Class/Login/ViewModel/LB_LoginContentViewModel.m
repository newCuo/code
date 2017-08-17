//
//  LB_LoginContentViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/23.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_LoginContentViewModel.h"
#import "LB_ContentView.h"
#import "UserModel.h"

@interface LB_LoginContentViewModel()
@property(strong,nonatomic)LB_ContentView *contentView;
@end

@implementation LB_LoginContentViewModel

-(void)initUI{
    
    self.contentView = [[LB_ContentView alloc]initWithFrame:CGRectMake(0, 64, KSCREENWIDTH, KSCREENHEIGHT-64)];
    [self.viewController.view addSubview:self.contentView];
    
}

-(void)bindingEvent
{
    
    [[self.contentView.loginBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(id x) {
        [UserModel shareDefaultUserModel].token = @"qeqweq";
    }];
    
    
}


@end
