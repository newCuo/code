//
//  LB_UserOrderContentViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/8/3.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_UserOrderContentViewModel.h"
#import "LB_UserOrderContentView.h"

@interface LB_UserOrderContentViewModel()

@property(strong,nonatomic)LB_UserOrderContentView *contentView;

@end
@implementation LB_UserOrderContentViewModel

-(void)initUI{
    
    self.contentView = [[LB_UserOrderContentView alloc]initWithFrame:CGRectMake(0, 64, KSCREENWIDTH, KSCREENHEIGHT-64)];
    [self.LB_View addSubview:self.contentView];
        
}

@end
