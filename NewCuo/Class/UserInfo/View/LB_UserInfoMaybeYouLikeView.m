//
//  LB_UserInfoMaybeYouLikeView.m
//  NewCuo
//
//  Created by 林波 on 2017/7/25.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_UserInfoMaybeYouLikeView.h"


@interface LB_UserInfoMaybeYouLikeView()

@property(strong,nonatomic)UIView *contentView;

@end

@implementation LB_UserInfoMaybeYouLikeView

-(id)initWithFrame:(CGRect)frame
{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        [self initUI];
    }
    return self;
}

-(void)initUI{
    
    UILabel *(^markLab)() = ^(){
        UILabel *lab = [[UILabel alloc]init];
        lab.backgroundColor = K_DARKLINE_COLOR;
        return lab;
    };
    
    
    UIImageView *imageV =[[UIImageView alloc]init];
    imageV.image = [UIImage imageNamed:@"recommend"];
    [self addSubview:imageV];
    [imageV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.top).offset(10);
        make.centerX.equalTo(self.centerX).offset(-30);
        make.size.mas_equalTo(CGSizeMake(10, 10));
    }];
    
    
    UILabel *lab = [[UILabel alloc]init];
    lab.text = @"猜你喜欢";
    lab.font = [UIFont systemFontOfSize:11];
    lab.textAlignment = NSTextAlignmentCenter;
    lab.textColor = [UIColor grayColor];
    [self addSubview:lab];
    [lab mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.top).offset(10);
        make.centerX.equalTo(self.centerX).offset(5);
        make.size.mas_equalTo(CGSizeMake(60, 10));
        
    }];
    
    UILabel *line1 = markLab();
    [self addSubview:line1];
    [line1 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.equalTo(lab.centerY).offset(0);
        make.height.offset(0.5);
        make.right.equalTo(imageV.mas_left).offset(-10);
        make.left.equalTo(self.mas_left).offset(20);
        
    }];
    
    UILabel *line2 = markLab();
    [self addSubview:line2];
    [line2 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.equalTo(lab.centerY).offset(0);
        make.height.offset(0.5);
        make.left.equalTo(lab.mas_right).offset(10);
        make.right.equalTo(self.mas_right).offset(-20);
        
    }];

    
    
    
    self.contentView = [[UIView alloc]init];
    self.contentView.backgroundColor = [UIColor whiteColor];
    [self addSubview:self.contentView];
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(lab.mas_bottom).offset(20);
        make.right.equalTo(self.mas_right).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(-20);
    }];
    
    
}

@end
