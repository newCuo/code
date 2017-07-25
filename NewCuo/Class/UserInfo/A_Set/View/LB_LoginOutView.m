//
//  LB_LoginOutView.m
//  NewCuo
//
//  Created by 林波 on 2017/7/25.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_LoginOutView.h"

@interface LB_LoginOutView();

@property(strong,nonatomic)UIButton *loginOutBtn;

@end

@implementation LB_LoginOutView

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = K_MAIN_COLOR;
        [self initUI];
    }
    
    return self;
}
-(void)initUI{
    
    self.loginOutBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.loginOutBtn setTitle:@"退出登录" forState:UIControlStateNormal];
    [self.loginOutBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self addSubview:self.loginOutBtn];
    [self.loginOutBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.offset(0);
    }];
}

@end
