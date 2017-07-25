//
//  LB_UserInfoPropertyView.m
//  NewCuo
//
//  Created by 林波 on 2017/7/25.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_UserInfoPropertyView.h"
#import "LB_CustormView.h"

@interface LB_UserInfoPropertyView()

@property(strong,nonatomic)UILabel *middleline;

@property(strong,nonatomic)LB_CustormView *payView;

@property(strong,nonatomic)LB_CustormView *getView;

@property(strong,nonatomic)LB_CustormView *commentView;

@property(strong,nonatomic)LB_CustormView *backPayView;


@end

@implementation LB_UserInfoPropertyView

-(id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [self initUI];
    }
    return self;
}

-(void)initUI{
    
    //线
    UILabel *topline = [[UILabel alloc]init];
    topline.backgroundColor = K_DARKLINE_COLOR;
    [self addSubview:topline];
    [topline mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.top.equalTo(self.mas_top).offset(0);
        make.height.offset(0.5);
    }];
    
    //线
    self.middleline = [[UILabel alloc]init];
    self.middleline.backgroundColor = K_DARKLINE_COLOR;
    [self addSubview:self.middleline];
    [self.middleline mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.top.equalTo(self.mas_top).offset(50);
        make.height.offset(0.5);
    }];
    
    
    UIImageView *imageV = [[UIImageView alloc]init];
    imageV.image = [UIImage imageNamed:@"money"];
    [self addSubview:imageV];
    [imageV mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(topline.mas_bottom).offset(10);
        make.left.equalTo(self.mas_left).offset(14);
        make.size.mas_equalTo(CGSizeMake(30, 30));
        
    }];
    
    
    
    UILabel *lab = [[UILabel alloc]init];
    lab.text = @"我的资产";
    lab.textColor = [UIColor darkTextColor];
    lab.font = [UIFont systemFontOfSize:15];
    [self addSubview:lab];
    [lab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(topline.mas_bottom).offset(0);
        make.left.equalTo(imageV.mas_right).offset(10);
        make.bottom.equalTo(self.middleline.mas_top).offset(0);
        make.width.offset(80);
    }];
    
    
    
    NSDictionary *dic = @{@"title":@"存款",@"Image":@"pre-deposit.png"};
    self.payView = [[LB_CustormView alloc]initWithDic:dic];
    [self addSubview:self.payView];
    [self.payView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.middleline.mas_bottom).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(0);
        make.width.offset(KSCREENWIDTH/4);
    }];
    
    NSDictionary *dic1 = @{@"title":@"账户明细",@"Image":@"present-record.png"};
    self.getView = [[LB_CustormView alloc]initWithDic:dic1];
    [self addSubview:self.getView];
    [self.getView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.middleline.mas_bottom).offset(0);
        make.left.equalTo(self.payView.mas_right).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(0);
        make.width.offset(KSCREENWIDTH/4);
    }];
    
    
    NSDictionary *dic2 = @{@"title":@"积分",@"Image":@"integral.png"};
    self.commentView = [[LB_CustormView alloc]initWithDic:dic2];
    [self addSubview:self.commentView];
    [self.commentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.middleline.mas_bottom).offset(0);
        make.left.equalTo(self.getView.mas_right).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(0);
        make.width.offset(KSCREENWIDTH/4);
    }];
    
    NSDictionary *dic3 = @{@"title":@"优惠券",@"Image":@"coupon.png"};
    self.backPayView = [[LB_CustormView alloc]initWithDic:dic3];
    [self addSubview:self.backPayView];
    [self.backPayView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.middleline.mas_bottom).offset(0);
        make.left.equalTo(self.commentView.mas_right).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(0);
        make.width.offset(KSCREENWIDTH/4);
    }];

    
   
}

-(void)setIsLogin:(BOOL)isLogin
{
    
    
    int count = isLogin?4:3;
    
    [self.payView remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.middleline.mas_bottom).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(0);
        make.width.offset(KSCREENWIDTH/count);
    }];
    
    [self.getView remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.middleline.mas_bottom).offset(0);
        make.left.equalTo(self.payView.mas_right).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(0);
        make.width.offset(KSCREENWIDTH/count);
    }];
    
    [self.commentView remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.middleline.mas_bottom).offset(0);
        make.left.equalTo(self.getView.mas_right).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(0);
        make.width.offset(KSCREENWIDTH/count);
    }];
    
    [self.backPayView remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.middleline.mas_bottom).offset(0);
        make.left.equalTo(self.commentView.mas_right).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(0);
        make.width.offset(KSCREENWIDTH/count);
    }];

    
}


@end
