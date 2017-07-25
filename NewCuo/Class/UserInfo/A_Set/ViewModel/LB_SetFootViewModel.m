//
//  LB_SetFootViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/25.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_SetFootViewModel.h"
#import "LB_LoginOutView.h"
#import "UserModel.h"


@interface LB_SetFootViewModel()

@property(strong,nonatomic)LB_LoginOutView *loginOutView;

@end

@implementation LB_SetFootViewModel

-(void)initUI{
    
    self.loginOutView = [[LB_LoginOutView alloc]initWithFrame:CGRectMake(0, KSCREENHEIGHT-50, KSCREENWIDTH, 50)];
    [self.viewController.view addSubview:self.loginOutView];
    
}

-(void)bindingEvent
{
    [[self.loginOutView.loginOutBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(id x) {
        [UserModel shareDefaultUserModel].token = @"";
        AppDelegate *app  = KAPPDELEGATE;
        [app.tabBarVC setSelectedIndex:0];
        [self.viewController.navigationController popViewControllerAnimated:YES];
    }];
    
    
}

@end
