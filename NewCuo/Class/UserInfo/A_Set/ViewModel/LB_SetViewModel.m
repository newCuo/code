//
//  LB_SetViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/25.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_SetViewModel.h"
#import "LB_SetContentView.h"

@interface LB_SetViewModel()

@property(strong,nonatomic)LB_SetContentView *contentView;

@end

@implementation LB_SetViewModel

-(void)initUI{
    
    
    self.contentView = [[LB_SetContentView alloc]initWithFrame:CGRectMake(0, 64, KSCREENWIDTH, KSCREENHEIGHT-64-50)];
    [self.viewController.view addSubview:self.contentView];
    
    
    
    
}

-(void)bindingEvent
{
    
    self.contentView.clickItem = ^(USERTYPE type){
        
        
    };
    
    
    
    
}


@end
