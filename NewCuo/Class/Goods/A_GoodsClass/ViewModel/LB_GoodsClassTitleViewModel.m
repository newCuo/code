//
//  LB_GoodsClassTitleViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/28.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_GoodsClassTitleViewModel.h"
#import "LB_GoodsClassTitleView.h"

@interface LB_GoodsClassTitleViewModel()

@property(strong,nonatomic)LB_GoodsClassTitleView *titleView;

@end


@implementation LB_GoodsClassTitleViewModel

-(void)initUI
{
    
    self.titleView  = [[LB_GoodsClassTitleView alloc]initWithFrame:CGRectMake(0, 0, KSCREENWIDTH, 64)];
    [self.viewController.view addSubview:self.titleView];
    
    
}

-(void)bindingEvent
{
    [[self.titleView.backBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(id x) {
        [self.viewController.navigationController popViewControllerAnimated:YES];
    }];
}

@end
