//
//  LB_SearchContentViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/23.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_SearchContentViewModel.h"
#import "LB_SearchContentView.h"
#import "LB_SearchModel.h"

@interface LB_SearchContentViewModel()

@property(strong,nonatomic)LB_SearchContentView *searchContentView;

@end

@implementation LB_SearchContentViewModel

-(void)initUI{
    
    self.searchContentView = [[LB_SearchContentView alloc]initWithFrame:CGRectMake(0, 64, KSCREENWIDTH, KSCREENHEIGHT-64)];
    [self.viewController.view addSubview:self.searchContentView];
    
    
}

-(void)bindingEvent{
    
    
    
    self.searchContentView.list = [LB_SearchModel getAllSearch];

}

@end
