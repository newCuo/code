//
//  LB_UserInfoContentViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/24.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_UserInfoContentViewModel.h"
#import "LB_UserInfoHeadView.h"
#import "LB_UserInfoOrderView.h"
#import "UserModel.h"
#import "LoginViewController.h"
#import "LB_UserInfoPropertyView.h"
#import "LB_UserInfoOnLineView.h"
#import "LB_UserInfoMaybeYouLikeView.h"
#import "LB_SetViewController.h"
#import "LB_UserInfoMyMessageViewController.h"
#import "LB_MyConcernViewController.h"
#import "LB_ReadHistoryViewController.h"
#import "LB_UserOrderViewController.h"
#import "LB_AccountViewController.h"
#import "LB_PointViewController.h"


@interface LB_UserInfoContentViewModel()

@property(strong,nonatomic)UIScrollView *backScrollView;

@property(strong,nonatomic)LB_UserInfoHeadView *userInfoHeadView;

@property(strong,nonatomic)LB_UserInfoOrderView *userInfoOrderView;

@property(strong,nonatomic)LB_UserInfoPropertyView *userInfoPropertyView;

@property(strong,nonatomic)LB_UserInfoOnLineView *userInfoOnLineView;

@property(strong,nonatomic)LB_UserInfoMaybeYouLikeView *userInfoMaybeYouLikeView;

@property(copy,nonatomic)NSString *token;

@property(assign,nonatomic)BOOL isLogin;


@end

@implementation LB_UserInfoContentViewModel


-(void)initUI{
    
    
      
    //scrollView
    self.backScrollView = [[UIScrollView alloc]init];
    self.backScrollView.backgroundColor = K_BACKGROUND_COLOR;
    [self.viewController.view addSubview:self.backScrollView];
    [self.backScrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.viewController.view.mas_top).offset(64);
        make.left.equalTo(self.viewController.view.mas_left).offset(0);
        make.bottom.equalTo(self.viewController.view.mas_bottom).offset(0);
        make.right.equalTo(self.viewController.view.mas_right).offset(0);
    }];
    
    
    //头部
    self.userInfoHeadView = [[LB_UserInfoHeadView alloc]init];
    [self.backScrollView addSubview:self.userInfoHeadView];
    [self.userInfoHeadView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.backScrollView.mas_top).offset(0);
        make.left.equalTo(self.backScrollView.mas_left).offset(0);
        make.width.offset(KSCREENWIDTH);
        make.height.offset(190);
    }];
    
    //订单
    self.userInfoOrderView = [[LB_UserInfoOrderView alloc]init];
    [self.backScrollView addSubview:self.userInfoOrderView];
    [self.userInfoOrderView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.userInfoHeadView.mas_bottom).offset(15);
        make.left.equalTo(self.viewController.view.mas_left).offset(0);
        make.width.offset(KSCREENWIDTH);
        make.height.offset(120);
    }];
    
    //资产
    self.userInfoPropertyView = [[LB_UserInfoPropertyView alloc]init];
    [self.backScrollView addSubview:self.userInfoPropertyView];
    [self.userInfoPropertyView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.userInfoOrderView.mas_bottom).offset(15);
        make.left.equalTo(self.viewController.view.mas_left).offset(0);
        make.width.offset(KSCREENWIDTH);
        make.height.offset(120);
    }];
    
    
    //在线客服
    self.userInfoOnLineView = [[LB_UserInfoOnLineView alloc]init];
    [self.backScrollView addSubview:self.userInfoOnLineView];
    [self.userInfoOnLineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.userInfoPropertyView.mas_bottom).offset(15);
        make.left.equalTo(self.viewController.view.mas_left).offset(0);
        make.width.offset(KSCREENWIDTH);
        make.height.offset(50);
    }];

    //猜你喜欢
    self.userInfoMaybeYouLikeView = [[LB_UserInfoMaybeYouLikeView alloc]init];
    [self.backScrollView addSubview:self.userInfoMaybeYouLikeView];
    [self.userInfoMaybeYouLikeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.userInfoOnLineView.mas_bottom).offset(20);
        make.left.equalTo(self.viewController.view.mas_left).offset(0);
        make.width.offset(KSCREENWIDTH);
        make.height.offset(250);
    }];

    
    
    
}

-(void)bindingEvent
{
    
    RAC(self,token) = RACObserve([UserModel shareDefaultUserModel], token);
    RAC(self.userInfoHeadView,isLogin) = RACObserve(self,isLogin);
    RAC(self.userInfoPropertyView,isLogin) = RACObserve(self,isLogin);
    
    @weakify(self);
    [[self.userInfoHeadView.loginBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(id x) {
        @strongify(self);
        LoginViewController *login = [[LoginViewController alloc]init];
        UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:login];
        nav.navigationBar.hidden = YES;
        [self.viewController presentViewController:nav animated:YES completion:nil];
    }];
    

    //****************   设置   *************************/
    [[self.userInfoHeadView.setBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(id x) {
        @strongify(self);
        LB_SetViewController *set = [[LB_SetViewController alloc]init];
        set.hidesBottomBarWhenPushed = YES;
        [self.viewController.navigationController pushViewController:set animated:YES];
        
    }];
    
    //****************   消息   *************************/
    [[self.userInfoHeadView.messageBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(id x) {
        @strongify(self);
        LB_UserInfoMyMessageViewController *message = [[LB_UserInfoMyMessageViewController alloc]init];
        message.hidesBottomBarWhenPushed = YES;
        [self.viewController.navigationController pushViewController:message animated:YES];
        
    }];
    
    //****************   我的关注   *************************/
    [[self.userInfoHeadView.myConcernBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(id x) {
        @strongify(self);
        LB_MyConcernViewController *concern = [[LB_MyConcernViewController alloc]init];
        concern.hidesBottomBarWhenPushed = YES;
        [self.viewController.navigationController pushViewController:concern animated:YES];
        
    }];
    
    
    //****************   浏览历史   *************************/
    [[self.userInfoHeadView.readHistoriesBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(id x) {
        @strongify(self);
        LB_ReadHistoryViewController *message = [[LB_ReadHistoryViewController alloc]init];
        message.hidesBottomBarWhenPushed = YES;
        [self.viewController.navigationController pushViewController:message animated:YES];
        
    }];
    
//    //****************   订单详情   *************************/
    
    WS(weakSelf);
    self.userInfoOrderView.clickOrderItem = ^(int type){
        LB_UserOrderViewController *order = [[LB_UserOrderViewController alloc]init];
        order.orderType = type;
        order.hidesBottomBarWhenPushed = YES;
        [weakSelf.viewController.navigationController pushViewController:order animated:YES];
    };
    
    
    /****************   账户信息   
                        1、预存款  2、账户明细  3、积分   4、优惠券
    ***/
    self.userInfoPropertyView.clickProperty = ^(int type){
        switch (type) {
            case 1:
            {
                
            }break;
            case 2:
            {
                LB_AccountViewController * account = [[LB_AccountViewController alloc]init];
                account.hidesBottomBarWhenPushed = YES;
                [weakSelf.viewController.navigationController pushViewController:account animated:YES];
            }break;
            case 3:
            {
                LB_PointViewController * point = [[LB_PointViewController alloc]init];
                point.hidesBottomBarWhenPushed = YES;
                [weakSelf.viewController.navigationController pushViewController:point animated:YES];
                
            }break;
            case 4:
            {
                
            }break;
            default:
                break;
        }
    };
}

-(void)setToken:(NSString *)token
{
    
    _token = token;
    self.isLogin = token.length>0?YES:NO;
    [self.userInfoHeadView remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.backScrollView.mas_top).offset(0);
        make.left.equalTo(self.backScrollView.mas_left).offset(0);
        make.width.offset(KSCREENWIDTH);
        CGFloat height = token.length>0?190:170;
        make.height.offset(height);
    }];
   
}

-(void)setIsLogin:(BOOL)isLogin
{
    _isLogin = isLogin;
    self.userInfoMaybeYouLikeView.hidden = !isLogin;
    if (!isLogin) {
        [self.backScrollView setContentSize:CGSizeMake(KSCREENWIDTH, 170+135+135+65)];
    }else
    {
        [self.backScrollView setContentSize:CGSizeMake(KSCREENWIDTH, 190+135+135+65+320)];
    }
}



-(void)initConfiguration{
    
    
    
    
}
@end
