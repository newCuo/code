//
//  AppDelegate+Configuration.m
//  NewCuo
//
//  Created by 林波 on 2017/7/21.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "AppDelegate+Configuration.h"
#import "IQKeyboardManager.h"

@implementation AppDelegate (Configuration)

-(void)initConfiguration{
    
    //设置键盘
    [self configureIQKeyboardManager];
    
}

- (void)configureIQKeyboardManager
{
    //开启输入框自动调节界面，不被键盘挡住
    [IQKeyboardManager sharedManager].enable = YES;
    [IQKeyboardManager sharedManager].toolbarDoneBarButtonItemText = @"完成";
    [IQKeyboardManager sharedManager].toolbarTintColor = K_MAIN_COLOR;
    [IQKeyboardManager sharedManager].shouldShowTextFieldPlaceholder = YES;
}

@end
