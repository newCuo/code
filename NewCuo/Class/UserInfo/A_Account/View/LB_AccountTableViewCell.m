//
//  LB_AccountTableViewCell.m
//  NewCuo
//
//  Created by 林波 on 2017/8/9.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_AccountTableViewCell.h"
@interface LB_AccountTableViewCell()

@property(strong,nonatomic)UILabel *timeLab;

@property(strong,nonatomic)UILabel *contentLab;

@property(strong,nonatomic)UILabel *moneyLab;

@property(strong,nonatomic)UILabel *payTypeLab;

@end
@implementation LB_AccountTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initUI];
    }
    return self;
}

-(void)initUI{
    
    self.contentLab = [[UILabel alloc]init];
    self.contentLab.text = @"在线支付";
    self.contentLab.font = K_FONT_14;
    [self addSubview:self.contentLab];
    [self.contentLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(10);
        make.left.equalTo(self.mas_left).offset(10);
        make.size.mas_equalTo(CGSizeMake(KSCREENWIDTH/2, 30));
    }];
    
    
    self.timeLab = [[UILabel alloc]init];
    self.timeLab.text = @"2019-09-08 12:04:56";
    self.timeLab.textColor = [UIColor grayColor];
    self.timeLab.font = K_FONT_13;
    [self addSubview:self.timeLab];
    [self.timeLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentLab.mas_bottom).offset(0);
        make.left.equalTo(self.mas_left).offset(10);
        make.size.mas_equalTo(CGSizeMake(KSCREENWIDTH/2, 30));
    }];

    self.moneyLab = [[UILabel alloc]init];
    self.moneyLab.text = @"+¥10000";
    self.moneyLab.textColor = K_RED_COLOR;
    self.moneyLab.font = K_FONT_14;
    self.moneyLab.textAlignment = NSTextAlignmentRight;
    [self addSubview:self.moneyLab];
    [self.moneyLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.contentLab.mas_centerY).offset(0);
        make.right.equalTo(self.mas_right).offset(-10);
        make.size.mas_equalTo(CGSizeMake(KSCREENWIDTH/2-20, 30));
    }];
    
    self.payTypeLab = [[UILabel alloc]init];
    self.payTypeLab.text = @"已支付";
    self.payTypeLab.textColor = [UIColor grayColor];
    self.payTypeLab.font = K_FONT_13;
    self.payTypeLab.textAlignment = NSTextAlignmentRight;
    [self addSubview:self.payTypeLab];
    [self.payTypeLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.timeLab.mas_centerY).offset(0);
        make.right.equalTo(self.mas_right).offset(-10);
        make.size.mas_equalTo(CGSizeMake(KSCREENWIDTH/2-20, 30));
    }];
    
    UILabel *line = [[UILabel alloc]init];
    line.backgroundColor = K_LINE_COLOR;
    [self addSubview:line];
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.mas_right).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(-0.5);
        make.height.offset(0.5);
    }];
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
