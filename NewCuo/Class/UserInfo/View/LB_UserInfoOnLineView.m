//
//  LB_UserInfoOnLineView.m
//  NewCuo
//
//  Created by 林波 on 2017/7/25.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_UserInfoOnLineView.h"
@interface LB_UserInfoOnLineView()

@end


@implementation LB_UserInfoOnLineView
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
    UILabel *middleline = [[UILabel alloc]init];
    middleline.backgroundColor = K_DARKLINE_COLOR;
    [self addSubview:middleline];
    [middleline mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.top.equalTo(self.mas_top).offset(50);
        make.height.offset(0.5);
    }];
    
    
    UIImageView *imageV = [[UIImageView alloc]init];
    imageV.image = [UIImage imageNamed:@"online"];
    [self addSubview:imageV];
    [imageV mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(topline.mas_bottom).offset(10);
        make.left.equalTo(self.mas_left).offset(14);
        make.size.mas_equalTo(CGSizeMake(30, 30));
        
    }];
    
    
    
    UILabel *lab = [[UILabel alloc]init];
    lab.text = @"在线客服";
    lab.textColor = [UIColor darkTextColor];
    lab.font = [UIFont systemFontOfSize:15];
    [self addSubview:lab];
    [lab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(topline.mas_bottom).offset(0);
        make.left.equalTo(imageV.mas_right).offset(10);
        make.bottom.equalTo(middleline.mas_top).offset(0);
        make.width.offset(80);
    }];
    
    
    UIImageView *goimageV = [[UIImageView alloc]init];
    goimageV.image = [UIImage imageNamed:@"right"];
    [self addSubview:goimageV];
    [goimageV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.mas_centerY).offset(0);
        make.right.equalTo(self.mas_right).offset(-13);
        make.size.mas_equalTo(CGSizeMake(10, 15));
    }];

    
}



@end
