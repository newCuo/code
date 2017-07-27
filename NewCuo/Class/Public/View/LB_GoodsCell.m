//
//  LB_GoodsCell.m
//  NewCuo
//
//  Created by 林波 on 2017/7/27.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_GoodsCell.h"

@interface LB_GoodsCell()

@property(strong,nonatomic) UIImageView *imageV;

@property(strong,nonatomic) UILabel *titleLab;

@property(strong,nonatomic) UILabel *priceLab;

@property(strong,nonatomic) UILabel *goodLab;


@end

@implementation LB_GoodsCell

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
    
    
    UILabel*line1 = [[UILabel alloc]init];
    line1.backgroundColor = K_LINE_COLOR;
    [self addSubview:line1];
    [line1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.offset(0.5);
        make.bottom.equalTo(self.mas_bottom).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
    }];
    
    
    self.imageV = [[UIImageView alloc]init];
    self.imageV.image = [UIImage imageNamed:@"test.png"];
    [self addSubview:self.imageV];
    [self.imageV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.offset(80);
        make.bottom.equalTo(self.mas_bottom).offset(-10);
        make.top.equalTo(self.mas_top).offset(10);
        make.left.equalTo(self.mas_left).offset(10);
    }];
    
    self.titleLab = [[UILabel alloc]init];
    self.titleLab.text = @"平底锅短发平底锅短发平底锅短发平底锅短发平底锅短发平底锅短发平底锅短发平底锅短发平底锅短发";
    self.titleLab.font = [UIFont systemFontOfSize:15];
    self.titleLab.numberOfLines = 2;
    [self addSubview: self.titleLab];
    [self.titleLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.offset(50);
        make.right.equalTo(self.mas_right).offset(-10);
        make.top.equalTo(self.mas_top).offset(5);
        make.left.equalTo(self.imageV.mas_right).offset(10);
    }];
    
    self.priceLab = [[UILabel alloc]init];
    self.priceLab.font = [UIFont systemFontOfSize:13];
    self.priceLab.textColor = K_COLOR_RGB(230, 10, 10);
    self.priceLab.text = @"¥12120";
    [self addSubview: self.priceLab];
    [self.priceLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.offset(20);
        make.right.equalTo(self.mas_right).offset(-10);
        make.top.equalTo(self.titleLab.mas_bottom).offset(0);
        make.left.equalTo(self.imageV.mas_right).offset(10);
    }];
    
    self.goodLab = [[UILabel alloc]init];
    self.goodLab.font = [UIFont systemFontOfSize:13];
    self.goodLab.textColor = [UIColor grayColor];
    self.goodLab.text = @"好评率:65%  123213人";
    [self addSubview: self.goodLab];
    [self.goodLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.offset(20);
        make.right.equalTo(self.mas_right).offset(-10);
        make.top.equalTo(self.priceLab.mas_bottom).offset(0);
        make.left.equalTo(self.imageV.mas_right).offset(10);
    }];

    
}

-(void)setIsHideRead:(BOOL)isHideRead
{
    _isHideRead = isHideRead;
    self.goodLab.hidden = isHideRead;
    
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
