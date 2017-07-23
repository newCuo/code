//
//  LB_SearchTitleViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/23.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_SearchTitleViewModel.h"
#import "LB_SearchTitleView.h"

@interface LB_SearchTitleViewModel ()

@property(strong,nonatomic)LB_SearchTitleView *searchTitleView;

@end

@implementation LB_SearchTitleViewModel

-(void)initUI
{
    self.searchTitleView = [[LB_SearchTitleView alloc]initWithFrame:CGRectMake(0, 0, KSCREENWIDTH, 64)];
    [self.viewController.view addSubview:self.searchTitleView];
    
    
}
-(void)bindingEvent
{
    @weakify(self);
    [[self.searchTitleView.backBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(id x) {
        @strongify(self);
        [self.viewController dismissViewControllerAnimated:NO completion:nil];
    }];
    
    
    [self.searchTitleView.searchTF becomeFirstResponder];
    
}


@end
