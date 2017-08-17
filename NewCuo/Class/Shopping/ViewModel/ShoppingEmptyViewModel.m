//
//  ShoppingEmptyViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/21.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "ShoppingEmptyViewModel.h"
#import "ShoppingEmptyView.h"
#import "LoginViewController.h"
#import "UserModel.h"

@interface ShoppingEmptyViewModel()

@property(weak,nonatomic)BaseViewController *viewController;

@property(strong,nonatomic)ShoppingEmptyView *shoppingEmptyView;


@end

@implementation ShoppingEmptyViewModel

-(id)initWithViewController:(BaseViewController*)viewController{
    
    self = [super init];
    if (self) {
        self.viewController = viewController;
        [self initUI];
        [self bindingEvent];
    }
    return self;
}

-(void)initUI{
    
    self.shoppingEmptyView = [[ShoppingEmptyView alloc]initWithFrame:CGRectMake(0, 64, KSCREENWIDTH, KSCREENHEIGHT-64)];
    [self.viewController.view addSubview:self.shoppingEmptyView];
    
    
    
    
}
-(void)bindingEvent{
    
    
    [[self.shoppingEmptyView.buyBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(id x) {
        AppDelegate *app = KAPPDELEGATE;
        [app.tabBarVC setSelectedIndex:0];
    }];
    
    @weakify(self);
    [[self.shoppingEmptyView.loginBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(id x) {
        @strongify(self);
        LoginViewController *login = [[LoginViewController alloc]init];
        UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:login];
        nav.navigationBar.hidden = YES;
        [self.viewController presentViewController:nav animated:YES completion:nil];
        
    }];
    
    
    RAC(self.shoppingEmptyView,isLogin) = RACObserve([UserModel shareDefaultUserModel],isLogin);
    
    
    
    
}





@end
