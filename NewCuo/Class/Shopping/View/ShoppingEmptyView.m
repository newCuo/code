//
//  ShoppingEmptyView.m
//  NewCuo
//
//  Created by 林波 on 2017/7/21.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "ShoppingEmptyView.h"

@interface ShoppingEmptyView ()

@property(strong,nonatomic)UIButton *loginBtn;

@property(strong,nonatomic)UIButton *buyBtn;

@property(strong,nonatomic)UIView *loginView;

@end

@implementation ShoppingEmptyView

-(id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        [self initUI];
    }
    return self;
}

-(void)initUI{
    
    
    self.loginView = [[UIView alloc]init];
    [self addSubview:self.loginView];
    [self.loginView mas_remakeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.mas_top).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.height.offset(60);
        
    }];
    
    
    //线
    UILabel * line = [[UILabel alloc]init];
    line.backgroundColor = K_LINE_COLOR;
    [self.loginView addSubview:line];
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.loginView.mas_bottom).offset(-0.5);
        make.right.equalTo(self.mas_right).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.height.offset(0.5);
    }];
    
    
    //登录按钮
    self.loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.loginBtn.layer.cornerRadius = 3;
    self.loginBtn.layer.borderColor = K_MAIN_COLOR.CGColor;
    [self.loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    self.loginBtn.titleLabel.font = [UIFont systemFontOfSize:15];
    [self.loginBtn setTitleColor:K_MAIN_COLOR forState:UIControlStateNormal];
    self.loginBtn.layer.borderWidth = 0.5f;
    [self.loginView addSubview:self.loginBtn];
    [self.loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.loginView.mas_top).offset(15);
        make.left.equalTo(self.loginView.mas_left).offset(15);
        make.bottom.equalTo(line.mas_top).offset(-15);
        make.width.offset(65);
    }];
    
    //登录提示
    UILabel *tishi = [[UILabel alloc]init];
    tishi.font = [UIFont systemFontOfSize:12];
    tishi.textColor = [UIColor grayColor];
    tishi.text = @"登录后可同步购物车里的商品";
    [self.loginView addSubview:tishi];
    [tishi mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.loginBtn.mas_right).offset(15);
        make.centerY.equalTo(self.loginBtn.mas_centerY).offset(0);
    }];
    
    
    //图片
    UIImageView *imageView = [[UIImageView alloc]init];
    imageView.image =[UIImage imageNamed:@"empty_cart.png"];
    imageView.layer.cornerRadius = 60;
    imageView.layer.masksToBounds = YES;
    [self addSubview:imageView];
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.loginView.mas_bottom).offset(60);
        make.centerX.equalTo(self.mas_centerX).offset(0);
        make.size.mas_equalTo(CGSizeMake(120, 120));
    }];
    
    //提示
    UILabel *tishi1 = [[UILabel alloc]init];
    tishi1.font = [UIFont systemFontOfSize:14];
    tishi1.textColor = [UIColor blackColor];
    tishi1.textAlignment = NSTextAlignmentCenter;
    tishi1.text = @"您的购物车空空如也，快去填满它吧!";
    [self addSubview:tishi1];
    [tishi1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(imageView.mas_bottom).offset(35);
        make.centerX.equalTo(self.mas_centerX).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
    }];

    
    self.buyBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.buyBtn setTitle:@"去逛逛" forState:UIControlStateNormal];
    self.buyBtn.layer.cornerRadius = 5;
    self.buyBtn.backgroundColor = K_MAIN_COLOR;
    [self.buyBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self addSubview:self.buyBtn];
    [self.buyBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(tishi1.mas_bottom).offset(35);
        make.right.equalTo(self.mas_right).offset(-20);
        make.left.equalTo(self.mas_left).offset(20);
        make.height.offset(44);
    }];
    
    
}

@end
