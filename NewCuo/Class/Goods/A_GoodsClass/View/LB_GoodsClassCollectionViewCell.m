//
//  LB_GoodsClassCollectionViewCell.m
//  NewCuo
//
//  Created by 林波 on 2017/8/2.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_GoodsClassCollectionViewCell.h"


@interface LB_GoodsClassCollectionViewCell()

@property(strong,nonatomic) UIImageView *imageV;

@property(strong,nonatomic) UILabel *titleLab;

@property(strong,nonatomic) UILabel *fullRebateLab;

@property(strong,nonatomic) UILabel *couponLab;

@property(strong,nonatomic) UILabel *priceLab;

@property(strong,nonatomic) UILabel *selfSellLab;

@property(strong,nonatomic) UILabel *goodLab;

@end


@implementation LB_GoodsClassCollectionViewCell

-(id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor whiteColor];
        self.layer.cornerRadius = 3;
        self.layer.borderColor = [UIColor grayColor].CGColor;
        self.layer.borderWidth = 0.5;
        [self initUI];
        
    }
    return self;
}
-(void)initUI{
    
    
    UILabel *(^markLab)()= ^(){
        
        UILabel *lab = [[UILabel alloc]init];
        lab.layer.cornerRadius = 3;
        lab.layer.borderColor = K_COLOR_RGB(240, 10, 10).CGColor;
        lab.layer.borderWidth = 0.5;
        lab.layer.masksToBounds = YES;
        lab.textAlignment = NSTextAlignmentCenter;
        lab.font = [UIFont systemFontOfSize:11];
        return lab;
        
    };
    

    
    self.imageV = [[UIImageView alloc]init];
    self.imageV.image = [UIImage imageNamed:@"test1"];
    [self addSubview:self.imageV];
    [self.imageV mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.mas_top).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.height.offset(140);
        
    }];
    
    self.titleLab = [[UILabel alloc]init];
    self.titleLab.font = [UIFont systemFontOfSize:13];
    self.titleLab.numberOfLines = 2;
    self.titleLab.textAlignment = NSTextAlignmentCenter;
    self.titleLab.text = @"小馒头小馒头小馒头小馒头小馒头小馒头小馒头小馒头小馒头小馒头小馒头小馒头小馒头";
    [self addSubview:self.titleLab];
    [self.titleLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.imageV.mas_bottom).offset(0);
        make.right.equalTo(self.mas_right).offset(-5);
        make.left.equalTo(self.mas_left).offset(5);
        make.height.offset(40);
    }];
    
    
    self.priceLab = [[UILabel alloc]init];
    self.priceLab.font = [UIFont systemFontOfSize:14];
    self.priceLab.textColor = K_COLOR_RGB(230, 10, 10);
    self.priceLab.text = @"¥12120";
    [self addSubview: self.priceLab];
    [self.priceLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.offset(20);
        make.right.equalTo(self.mas_right).offset(-5);
        make.top.equalTo(self.titleLab.mas_bottom).offset(0);
        make.left.equalTo(self.mas_left).offset(5);
    }];
    
    [self addSubview:self.fullRebateLab = markLab()];
    self.fullRebateLab.textColor = [UIColor whiteColor];
    self.fullRebateLab.backgroundColor = K_RED_COLOR;
    self.fullRebateLab.text = @"满折";
    [self.fullRebateLab mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.height.offset(16);
        make.width.offset(35);
        make.top.equalTo(self.priceLab.mas_bottom).offset(5);
        make.left.equalTo(self.mas_left).offset(5);
    }];
    
    [self addSubview:self.couponLab = markLab()];
    self.couponLab.textColor = [UIColor whiteColor];
    self.couponLab.backgroundColor = K_RED_COLOR;
    self.couponLab.text = @"领券";
    [self.couponLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.offset(16);
        make.width.offset(35);
        make.top.equalTo(self.priceLab.mas_bottom).offset(5);
        make.left.equalTo(self.fullRebateLab.mas_right).offset(5);
    }];

    [self addSubview:self.selfSellLab = markLab()];
    self.selfSellLab.backgroundColor = [UIColor whiteColor];
    self.selfSellLab.textColor = K_COLOR_RGB(240, 1, 1);
    self.selfSellLab.text = @"自营";
    [self.selfSellLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.offset(16);
        make.width.offset(35);
        make.top.equalTo(self.fullRebateLab.mas_bottom).offset(5);
        make.left.equalTo(self.mas_left).offset(5);
        
    }];
    
    
    self.goodLab = [[UILabel alloc]init];
    self.goodLab.font = [UIFont systemFontOfSize:12];
    self.goodLab.textColor = [UIColor grayColor];
    self.goodLab.text = @"好评率:65%  123213人";
    [self addSubview: self.goodLab];
    [self.goodLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.offset(20);
        make.right.equalTo(self.mas_right).offset(-5);
        make.top.equalTo(self.fullRebateLab.mas_bottom).offset(5);
        make.left.equalTo(self.selfSellLab.mas_right).offset(5);
    }];

    
    
}


@end
