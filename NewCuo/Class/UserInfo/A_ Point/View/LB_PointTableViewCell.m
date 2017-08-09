//
//  LB_PointTableViewCell.m
//  NewCuo
//
//  Created by 林波 on 2017/8/9.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_PointTableViewCell.h"


@interface LB_PointTableViewCell()

@property(strong,nonatomic) UILabel *timeLab;

@property(strong,nonatomic) UILabel *contentLab;

@property(strong,nonatomic) UILabel *pointLab;


@end

@implementation LB_PointTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.backgroundColor = K_BACKGROUND_COLOR;
        
        [self initUI];
        
    }
    return self;
}

-(void)initUI{
    
    
    UIView *view  =[[UIView alloc]init];
    view.backgroundColor = [UIColor whiteColor];
    [self addSubview:view];
    [view mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(10);
        make.right.equalTo(self.mas_right).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(0);
    }];
    
    
    UILabel *line = [[UILabel alloc]init];
    line.backgroundColor = K_LINE_COLOR;
    [view addSubview:line];
    [line mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view.mas_top).offset(35);
        make.right.equalTo(view.mas_right).offset(0);
        make.left.equalTo(view.mas_left).offset(0);
        make.height.offset(0.5);
        
    }];
    
    
    self.timeLab = [[UILabel alloc]init];
    self.timeLab.font = K_FONT_13;
    self.timeLab.text = @"2017-09-08 12:34:12";
    self.timeLab.textColor = [UIColor grayColor];
    [view addSubview:self.timeLab];
    [self.timeLab mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view.top).offset(0);
        make.height.offset(35);
        make.right.equalTo(view.mas_right).offset(0);
        make.left.equalTo(view.mas_left).offset(14);
    }];
    
    
    
    UIImageView *imageV = [[UIImageView alloc]init];
    imageV.image = [UIImage imageNamed:@"coin.png"];
    [view addSubview:imageV];
    [imageV mas_remakeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(line.bottom).offset(30);
        make.left.equalTo(view.mas_left).offset(14);
        make.size.mas_equalTo(CGSizeMake(20, 20));
        
    }];
    
    self.pointLab = [[UILabel alloc]init];
    self.pointLab.font = K_FONT_14;
    self.pointLab.text = @"+10";
    self.pointLab.textColor = K_RED_COLOR;
    [view addSubview:self.pointLab];
    [self.pointLab mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(imageV.mas_centerY).offset(0);
        make.height.offset(35);
        make.width.offset(80);
        make.right.equalTo(view.mas_right).offset(-10);
    }];
    
    self.contentLab = [[UILabel alloc]init];
    self.contentLab.font = K_FONT_14;
    self.contentLab.text = @"投资获取";
    [view addSubview:self.contentLab];
    [self.contentLab mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(imageV.mas_centerY).offset(0);
        make.height.offset(35);
        make.left.equalTo(imageV.mas_right).offset(10);
        make.right.equalTo(view.mas_right).offset(-10);
    }];
    
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
