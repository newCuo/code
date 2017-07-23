//
//  LB_GoodsTitleViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/23.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_GoodsTitleViewModel.h"
#import "LB_GoodsTitleView.h"
#import "LB_SearchViewController.h"

@interface LB_GoodsTitleViewModel ()

@property(strong,nonatomic)LB_GoodsTitleView *goodsTitleView;

@end

@implementation LB_GoodsTitleViewModel

-(void)initUI{
    
    self.goodsTitleView = [[LB_GoodsTitleView alloc]initWithFrame:CGRectMake(0, 0, KSCREENWIDTH, 64)];
    [self.viewController.view addSubview:self.goodsTitleView];
    
}
-(void)bindingEvent
{
    
    [[self.goodsTitleView.searchBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(id x) {
        
        LB_SearchViewController *search = [[LB_SearchViewController alloc]init];
        UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:search];
        nav.navigationBar.hidden = YES;
        AppDelegate *app  = KAPPDELEGATE;
        [app.tabBarVC presentViewController:nav animated:NO completion:nil];

        
    }];
    
    
}

@end
