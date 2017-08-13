//
//  LB_AddressTitleViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/8/9.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_AddressTitleViewModel.h"
#import "NavigationTitleView.h"

@interface LB_AddressTitleViewModel()
@property(strong,nonatomic)NavigationTitleView *titleView;
@end


@implementation LB_AddressTitleViewModel

-(void)initUI{
    
    self.titleView = [[NavigationTitleView alloc]initWithFrame:CGRectMake(0, 0, KSCREENWIDTH, 64)];
    [self.viewController.view addSubview:self.titleView];
    self.titleView.titleLab.text = @"地址管理";
    [self.titleView.leftBtn setImage:[UIImage imageNamed:@"navigation_back"] forState:UIControlStateNormal];
}

-(void)bindingEvent
{
    
    @weakify(self);
    [[self.titleView.leftBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(id x) {
        @strongify(self);
        [self.viewController.navigationController popViewControllerAnimated:YES];
    }];
    
}


@end
