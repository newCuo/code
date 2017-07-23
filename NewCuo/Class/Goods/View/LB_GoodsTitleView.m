//
//  LB_GoodsTitleView.m
//  NewCuo
//
//  Created by 林波 on 2017/7/23.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_GoodsTitleView.h"

@interface LB_GoodsTitleView();

@property(strong,nonatomic)UIButton *scanBtn;

@property(strong,nonatomic)UIButton *searchBtn;


@end

@implementation LB_GoodsTitleView

-(id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = K_COLOR_RGBA(153, 203, 52, 1.0);
        
        [self initUI];
        
    }
    return self;
}

-(void)initUI{
    
    
    
    
    
    UIView *view =[[UIView alloc]init];
    view.layer.cornerRadius = 5;
    view.backgroundColor = [UIColor whiteColor];
    [self addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(26);
        make.right.equalTo(self.mas_right).offset(-50);
        make.bottom.equalTo(self.mas_bottom).offset(-6);
        make.left.equalTo(self.mas_left).offset(20);
    }];
    
    
    
    
    
    UIImageView *imageV = [[UIImageView alloc]init];
    imageV.image =[UIImage imageNamed:@"search_big.png"];
    [view addSubview:imageV];
    [imageV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(view.mas_centerY).offset(0);
        make.size.mas_equalTo(CGSizeMake(20, 20));
        make.left.equalTo(view.mas_left).offset(10);
    }];
    
    UILabel *searchLab = [[UILabel alloc]init];
    searchLab.text = @"搜索商品";
    searchLab.textColor = [UIColor grayColor];
    searchLab.font = [UIFont systemFontOfSize:13];
    [view addSubview:searchLab];
    [searchLab mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.equalTo(view.mas_centerY).offset(0);
        make.left.equalTo(imageV.mas_right).offset(8);
        
    }];
    
    self.searchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [view addSubview:self.searchBtn];
    [self.searchBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view.mas_top).offset(0);
        make.right.equalTo(view.mas_right).offset(0);
        make.bottom.equalTo(view.mas_bottom).offset(0);
        make.left.equalTo(view.mas_left).offset(0);
    }];
    
    self.scanBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.scanBtn setImage:[UIImage imageNamed:@"sweep.png"] forState:UIControlStateNormal];
    [self addSubview:self.scanBtn];
    [self.scanBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(20);
        make.right.equalTo(self.mas_right).offset(-10);
        make.bottom.equalTo(self.mas_bottom).offset(0);
        make.width.offset(30);
    }];

    
    
}



@end
