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
    
    self.imageV = [[UIImageView alloc]init];
    self.imageV.image = [UIImage imageNamed:@"test2"];
    [self addSubview:self.imageV];
    [self.imageV mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.mas_top).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(-20);
        
    }];
    
    self.titleLab = [[UILabel alloc]init];
    self.titleLab.font = [UIFont systemFontOfSize:13];
    self.titleLab.textAlignment = NSTextAlignmentCenter;
    self.titleLab.text = @"小馒头";
    [self addSubview:self.titleLab];
    [self.titleLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.imageV.mas_bottom).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.height.offset(40);
    }];
    
    
}


@end
