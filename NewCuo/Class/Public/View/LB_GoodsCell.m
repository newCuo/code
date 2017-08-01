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

@property(strong,nonatomic) UILabel *titleLab;   //标题

@property(strong,nonatomic) UILabel *priceLab;   //价格

@property(strong,nonatomic) UILabel *goodLab;    //商品名称

@property(strong,nonatomic) UILabel *fullRebateLab; //满折

@property(strong,nonatomic) UILabel *couponLab; // 优惠券

@property(strong,nonatomic) UILabel *selfSellLab;// 自营



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
    
    
    UILabel *(^markLab)()= ^(){
        
        UILabel *lab = [[UILabel alloc]init];
        lab.layer.cornerRadius = 3;
        lab.layer.borderColor = K_COLOR_RGB(240, 10, 10).CGColor;
        lab.layer.borderWidth = 0.5;
        lab.layer.masksToBounds = YES;
        lab.textAlignment = NSTextAlignmentCenter;
        lab.font = [UIFont systemFontOfSize:11];
        return lab;
        
    };
    
    
    
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
        make.bottom.equalTo(self.mas_bottom).offset(-20);
        make.top.equalTo(self.mas_top).offset(20);
        make.left.equalTo(self.mas_left).offset(10);
    }];
    
    self.titleLab = [[UILabel alloc]init];
    self.titleLab.text = @"平底锅";
    self.titleLab.font = [UIFont systemFontOfSize:16];
    self.titleLab.numberOfLines = 2;
    [self addSubview: self.titleLab];
    [self.titleLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.offset(50);
        make.right.equalTo(self.mas_right).offset(-10);
        make.top.equalTo(self.mas_top).offset(5);
        make.left.equalTo(self.imageV.mas_right).offset(10);
    }];
    
    self.priceLab = [[UILabel alloc]init];
    self.priceLab.font = [UIFont systemFontOfSize:14];
    self.priceLab.textColor = K_COLOR_RGB(230, 10, 10);
    self.priceLab.text = @"¥12120";
    [self addSubview: self.priceLab];
    [self.priceLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.offset(30);
        make.width.offset(60);
        make.top.equalTo(self.titleLab.mas_bottom).offset(0);
        make.left.equalTo(self.imageV.mas_right).offset(10);
    }];
    
    
    [self addSubview:self.fullRebateLab = markLab()];
    self.fullRebateLab.textColor = [UIColor whiteColor];
    self.fullRebateLab.backgroundColor = K_COLOR_RGB(240, 1, 1);
    self.fullRebateLab.text = @"满折";
    [self.fullRebateLab mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.height.offset(16);
        make.width.offset(35);
        make.top.equalTo(self.titleLab.mas_bottom).offset(5);
        make.left.equalTo(self.priceLab.mas_right).offset(5);
    }];
    
    [self addSubview:self.couponLab = markLab()];
    self.couponLab.textColor = [UIColor whiteColor];
    self.couponLab.backgroundColor = K_COLOR_RGB(240, 1, 1);
    self.couponLab.text = @"领券";
    [self.couponLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.offset(16);
        make.width.offset(35);
        make.top.equalTo(self.titleLab.mas_bottom).offset(5);
        make.left.equalTo(self.fullRebateLab.mas_right).offset(5);
    }];

    
    
    
    
    [self addSubview:self.selfSellLab = markLab()];
    self.selfSellLab.backgroundColor = [UIColor whiteColor];
    self.selfSellLab.textColor = K_COLOR_RGB(240, 1, 1);
    self.selfSellLab.text = @"自营";
    [self.selfSellLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.offset(16);
        make.width.offset(35);
        make.top.equalTo(self.priceLab.mas_bottom).offset(7);
        make.left.equalTo(self.imageV.mas_right).offset(10);

    }];
    
    
    self.goodLab = [[UILabel alloc]init];
    self.goodLab.font = [UIFont systemFontOfSize:14];
    self.goodLab.textColor = [UIColor grayColor];
    self.goodLab.text = @"好评率:65%  123213人";
    [self addSubview: self.goodLab];
    [self.goodLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.offset(20);
        make.right.equalTo(self.mas_right).offset(-10);
        make.top.equalTo(self.priceLab.mas_bottom).offset(5);
        make.left.equalTo(self.selfSellLab.mas_right).offset(10);
    }];

    [self showSelfSell:NO];
    [self showCoupon:NO];
    [self showFullRebate:NO];
}

-(void)showSelfSell:(BOOL)isShow{
    
    [self.selfSellLab remakeConstraints:^(MASConstraintMaker *make) {
        
        CGFloat width = isShow?35:0;
        CGFloat right = isShow?10:0;
        make.height.offset(16);
        make.width.offset(width);
        make.top.equalTo(self.priceLab.mas_bottom).offset(0);
        make.left.equalTo(self.imageV.mas_right).offset(right);
    }];
}

-(void)showFullRebate:(BOOL)isShow{
    
    [self.fullRebateLab remakeConstraints:^(MASConstraintMaker *make) {
        CGFloat width = isShow?35:0;
        make.height.offset(16);
        make.width.offset(width);
        make.top.equalTo(self.titleLab.mas_bottom).offset(5);
        make.left.equalTo(self.priceLab.mas_right).offset(5);
    }];
}

-(void)showCoupon:(BOOL)isShow{
    
    [self.couponLab mas_makeConstraints:^(MASConstraintMaker *make) {
        CGFloat width = isShow?35:0;
        make.height.offset(16);
        make.width.offset(width);
        make.top.equalTo(self.titleLab.mas_bottom).offset(5);
        make.left.equalTo(self.fullRebateLab.mas_right).offset(5);
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
