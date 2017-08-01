//
//  LB_BaseViewModel.h
//  NewCuo
//
//  Created by 林波 on 2017/7/23.
//  Copyright © 2017年 林波. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LB_BaseViewModel : NSObject

-(BaseViewController*)viewController;

-(UIView*)LB_View;

//model初始化
-(id)initWithViewController:(BaseViewController*)ViewController;

//初始化ui
-(void)initUI;

//事件绑定
-(void)bindingEvent;

//网络请求
-(void)NetWorking;

//配置
-(void)initConfiguration;

@end
