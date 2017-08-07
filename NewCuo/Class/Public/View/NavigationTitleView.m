//
//  NavigationTitleView.m
//  NewCuo
//
//  Created by 林波 on 2017/7/21.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "NavigationTitleView.h"

@interface NavigationTitleView()

@property(strong,nonatomic)UILabel *titleLab;

@property(strong,nonatomic)UIButton *leftBtn;

@property(strong,nonatomic)UIButton *rightBtn;


@end


@implementation NavigationTitleView


-(id)init{
    
    self = [super init];
    if (self) {
       [self addUI];
       self.backgroundColor = K_MAIN_COLOR;
    }
    return self;
}


-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addUI];
        self.backgroundColor = K_MAIN_COLOR;
    }
    return self;
}

-(void)addUI{
    
    self.titleLab = [[UILabel alloc]init];
    self.titleLab.textAlignment = NSTextAlignmentCenter;
    self.titleLab.textColor = [UIColor whiteColor];
    self.titleLab.font = [UIFont systemFontOfSize:18];
    [self addSubview:self.titleLab];
    [self.titleLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(20);
        make.right.equalTo(self.mas_right).offset(-80);
        make.left.equalTo(self.mas_left).offset(80);
        make.bottom.equalTo(self.mas_bottom).offset(0);
    }];
    
    self.leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.leftBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.leftBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    [self addSubview:self.leftBtn];
    [self.leftBtn mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(24);
        make.left.equalTo(self.mas_left).offset(0);
        make.width.offset(40);
        make.bottom.equalTo(self.mas_bottom).offset(0);
    }];
    
    
    self.rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.rightBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.rightBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    [self addSubview:self.rightBtn];
    [self.rightBtn mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(25);
        make.right.equalTo(self.mas_right).offset(-10);
        make.width.offset(40);
        make.bottom.equalTo(self.mas_bottom).offset(0);
    }];

    

    
    
}




@end
