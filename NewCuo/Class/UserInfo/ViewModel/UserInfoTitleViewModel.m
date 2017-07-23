//
//  UserInfoTitleViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/21.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "UserInfoTitleViewModel.h"
#import "NavigationTitleView.h"
@interface UserInfoTitleViewModel()

@property(strong,nonatomic)BaseViewController *viewController;

@property(strong,nonatomic)NavigationTitleView *titleView;

@end

@implementation UserInfoTitleViewModel

-(id)initWithViewController:(BaseViewController*)ViewController{
    
    self = [super init];
    if (self) {
        self.viewController = ViewController;
        [self initUI];
    }
    return self;
}

-(void)initUI{
   
    self.titleView = [[NavigationTitleView alloc]initWithFrame:CGRectMake(0, 0, KSCREENWIDTH, 64)];
    self.titleView.titleLab.text = @"我的";
    [self.viewController.view addSubview:self.titleView];
    
    
}

@end
