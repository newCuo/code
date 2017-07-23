//
//  LB_HomeTitleView.m
//  NewCuo
//
//  Created by 林波 on 2017/7/23.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_HomeTitleView.h"

@interface LB_HomeTitleView ();

@property(strong,nonatomic)UIButton *scanBtn;

@property(strong,nonatomic)UIButton *messageBtn;


@end

@implementation LB_HomeTitleView

-(id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = K_COLOR_RGBA(153, 203, 52, 1.0);
        
        [self initUI];
        
    }
    return self;
}

-(void)initUI{
    
    self.scanBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.scanBtn setImage:[UIImage imageNamed:@"sweep.png"] forState:UIControlStateNormal];
    [self addSubview:self.scanBtn];
    [self.scanBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(20);
        make.left.equalTo(self.mas_left).offset(10);
        make.bottom.equalTo(self.mas_bottom).offset(0);
        make.width.offset(40);
    }];
    
    
    
    
}

@end
