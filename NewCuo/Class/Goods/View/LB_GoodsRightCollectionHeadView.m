//
//  LB_GoodsRightCollectionHeadView.m
//  NewCuo
//
//  Created by 林波 on 2017/7/28.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_GoodsRightCollectionHeadView.h"
@interface LB_GoodsRightCollectionHeadView()

@property(strong,nonatomic)UILabel *titleLab;

@end
@implementation LB_GoodsRightCollectionHeadView

-(id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = K_BACKGROUND_COLOR;
        [self initUI];
    }
    return self;
}

-(void)initUI{
    
    self.titleLab = [[UILabel alloc]init];
    self.titleLab.textColor = [UIColor darkGrayColor];
    self.titleLab.font = [UIFont systemFontOfSize:14];
    self.titleLab.text = @"电商";
    [self addSubview:self.titleLab];
    [self.titleLab mas_makeConstraints:^(MASConstraintMaker *make) {
         make.top.equalTo(self.mas_top).offset(0);
         make.left.equalTo(self.mas_left).offset(14);
         make.bottom.equalTo(self.mas_bottom).offset(0);
         make.right.equalTo(self.mas_right).offset(-14);
    }];
    
    
}

@end
