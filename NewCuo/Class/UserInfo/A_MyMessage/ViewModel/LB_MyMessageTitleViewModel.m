//
//  LB_MyMessageTitleViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/25.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_MyMessageTitleViewModel.h"
#import "NavigationTitleView.h"

@interface LB_MyMessageTitleViewModel()
@property(strong,nonatomic)NavigationTitleView *titleView;
@end
@implementation LB_MyMessageTitleViewModel

-(void)initUI{
    
    //导航
    self.titleView = [[NavigationTitleView alloc]initWithFrame:CGRectMake(0, 0, KSCREENWIDTH, 64)];
    [self.viewController.view addSubview:self.titleView];
    self.titleView.titleLab.text = @"我的消息";
    [self.titleView.leftBtn setImage:[UIImage imageNamed:@"navigation_back"] forState:UIControlStateNormal];
    
    [self.titleView.rightBtn setTitle:@"编辑" forState:UIControlStateNormal];
    [self.titleView.rightBtn setTitle:@"取消" forState:UIControlStateSelected];
    
    
}

-(void)bindingEvent
{
    
    @weakify(self);
    [[self.titleView.leftBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(id x) {
        @strongify(self);
        [self.viewController.navigationController popViewControllerAnimated:YES];
    }];
    
    [[self.titleView.rightBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(UIButton *btn) {
        @strongify(self);
        btn.selected = !btn.selected;
        self.isOpen = btn.selected;
    }];
    
    
}



@end
