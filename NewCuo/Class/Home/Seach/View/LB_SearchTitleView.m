//
//  LB_SearchTitleView.m
//  NewCuo
//
//  Created by 林波 on 2017/7/23.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_SearchTitleView.h"

@interface LB_SearchTitleView ()

@property(strong,nonatomic)UIButton *backBtn;

@property(strong,nonatomic)UIButton *searchBtn;

@property(strong,nonatomic)UITextField *searchTF;

@end

@implementation LB_SearchTitleView

-(id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = K_COLOR_RGBA(153, 203, 52, 1.0);
        
        [self initUI];
        
    }
    return self;
}

-(void)initUI{
    
    
    
    self.backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.backBtn setImage:[UIImage imageNamed:@"navigation_back.png"] forState:UIControlStateNormal];
    [self.backBtn setTitle:@" " forState:UIControlStateNormal];
    [self addSubview:self.backBtn];
    [self.backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(20);
        make.left.equalTo(self.mas_left).offset(10);
        make.bottom.equalTo(self.mas_bottom).offset(0);
        make.width.offset(30);
    }];
    
    
    self.searchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.searchBtn setTitle:@"搜索" forState:UIControlStateNormal];
    self.searchBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    [self.searchBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self addSubview:self.searchBtn];
    [self.searchBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(20);
        make.right.equalTo(self.mas_right).offset(-10);
        make.bottom.equalTo(self.mas_bottom).offset(0);
        make.width.offset(30);
    }];
    
    
    UIView *view =[[UIView alloc]init];
    view.layer.cornerRadius = 5;
    view.backgroundColor = [UIColor whiteColor];
    [self addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(26);
        make.right.equalTo(self.searchBtn.mas_left).offset(-10);
        make.bottom.equalTo(self.mas_bottom).offset(-6);
        make.left.equalTo(self.backBtn.mas_right).offset(10);
    }];
    
    
    
    
    
    UIImageView *imageV = [[UIImageView alloc]init];
    imageV.image =[UIImage imageNamed:@"search_big.png"];
    [view addSubview:imageV];
    [imageV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(view.mas_centerY).offset(0);
        make.size.mas_equalTo(CGSizeMake(20, 20));
        make.left.equalTo(view.mas_left).offset(10);
    }];
    
    self.searchTF = [[UITextField alloc]init];
    self.searchTF.placeholder = @"搜索商品";
    self.searchTF.textColor = [UIColor blackColor];
    self.searchTF.font = [UIFont systemFontOfSize:13];
    [view addSubview:self.self.searchTF];
    [self.searchTF mas_makeConstraints:^(MASConstraintMaker *make) {
        

        make.left.equalTo(imageV.mas_right).offset(8);
        make.right.equalTo(view.mas_right).offset(0);
        make.top.equalTo(view.mas_top).offset(0);
        make.bottom.equalTo(view.mas_bottom).offset(0);
        
    }];
    
    
}

@end
