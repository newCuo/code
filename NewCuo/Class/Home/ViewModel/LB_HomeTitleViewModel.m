//
//  LB_HomeTitleViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/23.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_HomeTitleViewModel.h"
#import "LB_HomeTitleView.h"
#import "LB_SearchViewController.h"

@interface LB_HomeTitleViewModel()

@property(strong,nonatomic)LB_HomeTitleView *homeTitleView;

@end

@implementation LB_HomeTitleViewModel


-(void)initUI{
    
    self.homeTitleView = [[LB_HomeTitleView alloc]initWithFrame:CGRectMake(0, 0, KSCREENWIDTH, 64)];
    [self.viewController.view addSubview:self.homeTitleView];
    
    
    
}
-(void)bindingEvent{
    
    
    
    
    [[self.homeTitleView.searchBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(id x) {

        LB_SearchViewController *search = [[LB_SearchViewController alloc]init];
        UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:search];
        nav.navigationBar.hidden = YES;
        AppDelegate *app  = KAPPDELEGATE;
        [app.tabBarVC presentViewController:nav animated:NO completion:nil];
        
    }];
    
    
    
    
    
}

@end
