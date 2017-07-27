//
//  LB_MyMessageContentViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/25.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_MyMessageContentViewModel.h"
#import "LB_MyMessageContentView.h"

@interface LB_MyMessageContentViewModel()

@property(strong,nonatomic)LB_MyMessageContentView *contentView;

@end

@implementation LB_MyMessageContentViewModel

-(void)initUI{
    
    self.contentView = [[LB_MyMessageContentView alloc]initWithFrame:CGRectMake(0, 64, KSCREENWIDTH, KSCREENHEIGHT-64)];
    [self.viewController.view addSubview:self.contentView];
    
}

-(void)bindingEvent
{
    
    RAC(self.contentView,isOpen) = RACObserve(self, isOpen);
    
    
}

-(void)setIsOpen:(BOOL)isOpen{
    
    _isOpen = isOpen;
    if (isOpen==YES) {
        [UIView animateWithDuration:0.38 animations:^{
            self.contentView.frame = CGRectMake(0, 64, KSCREENWIDTH, KSCREENHEIGHT-64-80);
        }];
    }else
    {
        [UIView animateWithDuration:0.38 animations:^{
            self.contentView.frame = CGRectMake(0, 64, KSCREENWIDTH, KSCREENHEIGHT-64);
        }];
    }
    
}


@end
