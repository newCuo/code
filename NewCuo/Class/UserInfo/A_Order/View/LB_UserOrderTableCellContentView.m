//
//  LB_UserOrderTableCellContentView.m
//  NewCuo
//
//  Created by 林波 on 2017/8/4.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_UserOrderTableCellContentView.h"

@interface LB_UserOrderTableCellContentView();

@property(strong,nonatomic)UIImageView *imageV;

@property(strong,nonatomic)UILabel *countLab;

@property(strong,nonatomic)UILabel *titleLab;



@end

@implementation LB_UserOrderTableCellContentView

-(id)init{
    
    self  = [super init];
    if (self) {
        [self initUI];
    }
    return self;
}
-(void)initUI{
    
    
    self.imageV = [[UIImageView alloc]init];
    self.imageV.image = [UIImage imageNamed:@"test"];
    [self addSubview:self.imageV];
    [self.imageV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(5);
        make.bottom.equalTo(self.mas_bottom).offset(-5);
        make.left.equalTo(self.mas_left).offset(14);
        make.width.offset(60);
    }];
    
    
    self.countLab = [[UILabel alloc]init];
    self.countLab.textColor = [UIColor grayColor];
    self.countLab.font = K_FONT_13;
    self.countLab.text = @"x23";
    [self addSubview:self.countLab];
    [self.countLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.imageV.mas_centerY).offset(0);
        make.right.equalTo(self.mas_right).offset(-12);
        make.width.offset(40);
    }];
    
    
    self.titleLab = [[UILabel alloc]init];
    self.titleLab.textColor = [UIColor grayColor];
    self.titleLab.numberOfLines = 0;
    self.titleLab.font = K_FONT_13;
    self.titleLab.text = @"x23";
    [self addSubview:self.titleLab];
    [self.titleLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.imageV.mas_centerY).offset(0);
        make.right.equalTo(self.countLab.mas_left).offset(-8);
        make.left.equalTo(self.imageV.mas_right).offset(8);
        make.height.offset(60);
    }];

    
    
}


@end
