//
//  LB_ReadHistoryTitleViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/27.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_ReadHistoryTitleViewModel.h"
#import "NavigationTitleView.h"

@interface LB_ReadHistoryTitleViewModel()

@property(strong,nonatomic)NavigationTitleView *titleView;

@end

@implementation LB_ReadHistoryTitleViewModel

-(void)initUI{
    
    //导航
    self.titleView = [[NavigationTitleView alloc]initWithFrame:CGRectMake(0, 0, KSCREENWIDTH, 64)];
    [self.viewController.view addSubview:self.titleView];
    self.titleView.titleLab.text = @"浏览历史";
    [self.titleView.leftBtn setImage:[UIImage imageNamed:@"navigation_back"] forState:UIControlStateNormal];
    
    [self.titleView.rightBtn setTitle:@"清空" forState:UIControlStateNormal];
 
    
    
}

-(void)bindingEvent
{
    
    @weakify(self);
    [[self.titleView.leftBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(id x) {
        @strongify(self);
        [self.viewController.navigationController popViewControllerAnimated:YES];
    }];
    
    [[self.titleView.rightBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(UIButton *btn) {
        
       
    }];
    
    
}


@end