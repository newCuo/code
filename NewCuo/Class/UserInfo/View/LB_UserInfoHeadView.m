//
//  LB_UserInfoHeadView.m
//  NewCuo
//
//  Created by 林波 on 2017/7/24.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_UserInfoHeadView.h"

@interface LB_UserInfoHeadView()

@property(strong,nonatomic)UIButton *messageBtn;

@property(strong,nonatomic)UIButton *setBtn;

@property(strong,nonatomic)UIImageView *headImageView;

@property(strong,nonatomic)UILabel *userNameLab;

@property(strong,nonatomic)UILabel *leverLab;

@property(strong,nonatomic)UIButton *myConcernBtn;//我的关注

@property(strong,nonatomic)UIButton *readHistoriesBtn;//浏览历史

@property(strong,nonatomic)UILabel *myConcernLab; //我的关注

@property(strong,nonatomic)UILabel *readHistoriesLab; //浏览历史

@property(strong,nonatomic)UIButton *loginBtn;



@end

@implementation LB_UserInfoHeadView

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [self initUI];
    }
    return self;
}
-(void)initUI{
    
    
    
    UIView *(^markView)(void)=^(){
        UIView *view =[[UIView alloc]init];
        view.backgroundColor = K_COLOR_RGBA(0, 0, 0, 0.2);
        view.layer.cornerRadius = 25;
        return view;
    };
    
    UIButton *(^markBtn)(void) = ^(){
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.titleLabel.font = [UIFont systemFontOfSize:14];
        [btn setTitleColor:K_COLOR_RGB(53, 53, 53) forState:UIControlStateNormal];
        return btn;
    };
    
    
    UILabel *(^markLab)(void) = ^(){
        UILabel *lab = [[UILabel alloc]init];
        lab.textColor = [UIColor grayColor];
        lab.font = [UIFont systemFontOfSize:12];
        lab.textAlignment = NSTextAlignmentCenter;
        return lab;
    };

    
    UIImageView *imagev = [[UIImageView alloc]init];
    imagev.userInteractionEnabled = YES;
    imagev.image = [UIImage imageNamed:@"my"];
    [self addSubview:imagev];
    [imagev mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.height.offset(120);
    }];
    
    UIView *messageView = markView();
    [self addSubview:messageView];
    [messageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(20);
        make.right.equalTo(self.mas_right).offset(-15);
        make.size.mas_equalTo(CGSizeMake(50, 50));
    }];
    
    
    self.messageBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.messageBtn setImage:[UIImage imageNamed:@"userinfo_message"] forState:UIControlStateNormal];
    [messageView addSubview:self.messageBtn];
    [self.messageBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(messageView.mas_centerX).offset(0);
        make.centerY.equalTo(messageView.mas_centerY).offset(0);
        make.size.mas_equalTo(CGSizeMake(25, 25));
    }];
    
    UIView *setView = markView();
    [self addSubview:setView];
    [setView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(20);
        make.right.equalTo(messageView.mas_left).offset(-15);
        make.size.mas_equalTo(CGSizeMake(50, 50));
    }];
    
    
    self.setBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.setBtn setImage:[UIImage imageNamed:@"userInfo_set"] forState:UIControlStateNormal];
    [setView addSubview:self.setBtn];
    [self.setBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(setView.mas_centerX).offset(0);
        make.centerY.equalTo(setView.mas_centerY).offset(0);
        make.size.mas_equalTo(CGSizeMake(25, 25));
    }];

    //用户头像
    self.headImageView = [[UIImageView alloc]init];
    self.headImageView.image = [UIImage imageNamed:@"c_defaultImg"];
    [self addSubview:self.headImageView];
    [self.headImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.equalTo(imagev.mas_bottom).offset(0);
        make.left.equalTo(self.mas_left).offset(15);
        make.size.mas_equalTo(CGSizeMake(80, 80));
        
    }];
    
    
    //用户名
    self.leverLab = [[UILabel alloc]init];
    self.leverLab.text = @"黄金会员";
    self.leverLab.textColor = [UIColor whiteColor];
    self.leverLab.font = [UIFont systemFontOfSize:11];
    [self addSubview:self.leverLab];
    [self.leverLab mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self.headImageView.mas_right).offset(10);
        make.bottom.equalTo(imagev.mas_bottom).offset(-2);
        make.size.mas_equalTo(CGSizeMake(150, 12));
        
    }];

    //用户等级
    self.userNameLab = [[UILabel alloc]init];
    self.userNameLab.text = @"lyq4436";
    self.userNameLab.textColor = [UIColor whiteColor];
    self.userNameLab.font = [UIFont systemFontOfSize:14];
    [self addSubview:self.userNameLab];
    [self.userNameLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.headImageView.mas_right).offset(10);
        make.bottom.equalTo(self.leverLab.mas_top).offset(0);
        make.size.mas_equalTo(CGSizeMake(150, 20));
    }];
    
    
    
    self.loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.loginBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.loginBtn setTitle:@"登录/注册 >" forState:UIControlStateNormal];
    self.loginBtn.titleLabel.font = [UIFont systemFontOfSize:13];
    [self addSubview:self.loginBtn];
    [self.loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.headImageView.mas_right).offset(10);
        make.bottom.equalTo(imagev.mas_bottom).offset(-2);
        make.size.mas_equalTo(CGSizeMake(80, 30));
    }];
    
    //浏览历史
    [self addSubview:self.readHistoriesBtn = markBtn()];
    [self.readHistoriesBtn setTitle:@"浏览历史" forState:UIControlStateNormal];
    [self.readHistoriesBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.mas_bottom).offset(-15);
        make.right.equalTo(self.mas_right).offset(-20);
        make.size.mas_equalTo(CGSizeMake(80, 25));
    }];
    
    [self addSubview:self.readHistoriesLab = markLab()];
    self.readHistoriesLab.text = @"12";
    [self.readHistoriesLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.readHistoriesBtn.mas_top).offset(0);
        make.right.equalTo(self.mas_right).offset(-20);
        make.size.mas_equalTo(CGSizeMake(80, 20));
    }];
    
    
    //我的关注
    [self addSubview:self.myConcernBtn = markBtn()];
    [self.myConcernBtn setTitle:@"我的关注" forState:UIControlStateNormal];
    [self.myConcernBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.mas_bottom).offset(-15);
        make.right.equalTo(self.readHistoriesBtn.mas_left).offset(-20);
        make.size.mas_equalTo(CGSizeMake(80, 25));
    }];
    
    [self addSubview:self.myConcernLab = markLab()];
    self.myConcernLab.text = @"1200";
    [self.myConcernLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.myConcernBtn.mas_top).offset(0);
        make.right.equalTo(self.readHistoriesBtn.mas_left).offset(-20);
        make.size.mas_equalTo(CGSizeMake(80, 20));
    }];

    
    
    
    
    //线
    UILabel *line = [[UILabel alloc]init];
    line.backgroundColor = K_DARKLINE_COLOR;
    [self addSubview:line];
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
         make.left.equalTo(self.mas_left).offset(0);
         make.right.equalTo(self.mas_right).offset(0);
         make.bottom.equalTo(self.mas_bottom).offset(0);
         make.height.offset(0.5);
    }];

    
}
-(void)setIsLogin:(BOOL)isLogin
{
    
    self.myConcernLab.hidden = !isLogin;
    self.readHistoriesLab.hidden = !isLogin;
    self.userNameLab.hidden = !isLogin;
    self.leverLab.hidden = !isLogin;
    self.loginBtn.hidden = isLogin;
    
}

@end
