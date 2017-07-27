//
//  LB_MyMessageFootViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/25.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_MyMessageFootViewModel.h"
#import "LB_MyMessageFootView.h"

@interface LB_MyMessageFootViewModel()

@property(strong,nonatomic)LB_MyMessageFootView *myMessageFootView;

@end

@implementation LB_MyMessageFootViewModel

-(void)initUI{
    
    self.myMessageFootView = [[LB_MyMessageFootView alloc]initWithFrame:CGRectMake(0, KSCREENHEIGHT, KSCREENWIDTH, 80)];
    [self.viewController.view addSubview:self.myMessageFootView];

    
}

-(void)setIsOpen:(BOOL)isOpen
{
    _isOpen = isOpen;
    if (isOpen==YES) {
        [UIView animateWithDuration:0.38 animations:^{
            [self.myMessageFootView setFrame:CGRectMake(0, KSCREENHEIGHT-80, KSCREENWIDTH, 80)];
        }];
    }else
    {
        [UIView animateWithDuration:0.38 animations:^{
            [self.myMessageFootView setFrame:CGRectMake(0, KSCREENHEIGHT, KSCREENWIDTH, 80)];
        }];
    }
}




@end
