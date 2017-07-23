//
//  LB_HomeTitleViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/23.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_HomeTitleViewModel.h"
#import "LB_HomeTitleView.h"

@interface LB_HomeTitleViewModel()

@property(strong,nonatomic)LB_HomeTitleView *homeTitleView;

@end

@implementation LB_HomeTitleViewModel


-(void)initUI{
    
    self.homeTitleView = [[LB_HomeTitleView alloc]initWithFrame:CGRectMake(0, 0, KSCREENWIDTH, 64)];
    [self.viewController.view addSubview:self.homeTitleView];
    
    
    
}
-(void)bindingEvent{
    
    
    
    
}

@end
