//
//  LB_MyMessageFootView.m
//  NewCuo
//
//  Created by 林波 on 2017/7/26.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_MyMessageFootView.h"
@interface LB_MyMessageFootView()

@property(strong,nonatomic)UIButton *readBtn;

@property(strong,nonatomic)UIButton *clearBtn;

@end

@implementation LB_MyMessageFootView




-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [self initUI];
    }
    return self;
}
-(void)initUI{
    
    
    //线
    UILabel *middleline = [[UILabel alloc]init];
    middleline.backgroundColor = K_DARKLINE_COLOR;
    [self addSubview:middleline];
    [middleline mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.top.equalTo(self.mas_top).offset(0);
        make.height.offset(0.5);
    }];

    
    
    UIButton *(^markBtn)() = ^(){
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.backgroundColor = K_MAIN_COLOR;
        btn.layer.cornerRadius = 5;
        btn.layer.masksToBounds = YES;
        btn.titleLabel.font = [UIFont systemFontOfSize:14];
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        return btn;
    };
    
    
    [self addSubview:self.readBtn = markBtn()];
    [self.readBtn setTitle:@"全部已读" forState:UIControlStateNormal];
    [self.readBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.mas_centerX).offset(-KSCREENWIDTH/4);
        make.centerY.equalTo(self.mas_centerY).offset(0);
        make.size.mas_equalTo(CGSizeMake(KSCREENWIDTH/2-40, 40));
    }];
    
    
    [self addSubview:self.clearBtn = markBtn()];
    [self.clearBtn setTitle:@"清空" forState:UIControlStateNormal];
    [self.clearBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.mas_centerX).offset(KSCREENWIDTH/4);
        make.centerY.equalTo(self.mas_centerY).offset(0);
        make.size.mas_equalTo(CGSizeMake(KSCREENWIDTH/2-40, 40));
    }];
}

@end
