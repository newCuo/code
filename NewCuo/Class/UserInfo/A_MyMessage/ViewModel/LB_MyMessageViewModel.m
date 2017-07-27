//
//  LB_MyMessageViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/26.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_MyMessageViewModel.h"

#import "LB_MyMessageFootViewModel.h"
#import "LB_MyMessageTitleViewModel.h"
#import "LB_MyMessageContentViewModel.h"

@interface LB_MyMessageViewModel()
@property(strong,nonatomic)LB_MyMessageTitleViewModel *titleViewModel;

@property(strong,nonatomic)LB_MyMessageContentViewModel *contentViewModel;

@property(strong,nonatomic)LB_MyMessageFootViewModel *footViewModel;

@end

@implementation LB_MyMessageViewModel

-(void)initUI
{
    
    self.titleViewModel = [[LB_MyMessageTitleViewModel alloc]initWithViewController:self.viewController];
    self.contentViewModel = [[LB_MyMessageContentViewModel alloc]initWithViewController:self.viewController];
    self.footViewModel = [[LB_MyMessageFootViewModel alloc]initWithViewController:self.viewController];

    
    
}

-(void)bindingEvent
{
    
    RAC(self.footViewModel,isOpen) = RACObserve(self.titleViewModel, isOpen);
    RAC(self.contentViewModel,isOpen) = RACObserve(self.titleViewModel, isOpen);
    
    
}


@end
