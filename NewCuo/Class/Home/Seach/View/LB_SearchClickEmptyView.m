//
//  LB_SearchClickEmptyView.m
//  NewCuo
//
//  Created by 林波 on 2017/7/23.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_SearchClickEmptyView.h"

@interface LB_SearchClickEmptyView ();

@property(strong,nonatomic)UIButton *emptyBtn;

@end

@implementation LB_SearchClickEmptyView

-(id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor =K_BACKGROUND_COLOR;
        [self initUI];
    }
    return self;
}

-(void)initUI{
    
    self.emptyBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.emptyBtn.backgroundColor = [UIColor whiteColor];
    [self.emptyBtn setTitle:@"清空历史信息" forState:UIControlStateNormal];
    [self.emptyBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    self.emptyBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    self.emptyBtn.layer.cornerRadius = 5;
    self.emptyBtn.layer.borderWidth = 0.5;
    self.emptyBtn.layer.borderColor = [UIColor grayColor].CGColor;
    [self addSubview:self.emptyBtn];
    [self.emptyBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.mas_right).offset(-20);
        make.left.equalTo(self.mas_left).offset(20);
        make.height.offset(45);
        make.centerY.equalTo(self.mas_centerY).offset(0);
    }];
    
    
}

@end
