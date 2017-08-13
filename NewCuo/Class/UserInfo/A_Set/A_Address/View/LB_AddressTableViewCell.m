//
//  LB_AddressTableViewCell.m
//  NewCuo
//
//  Created by 林波 on 2017/8/10.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_AddressTableViewCell.h"
@interface LB_AddressTableViewCell()

@property(strong,nonatomic)UIButton *deleteBtn;
@property(strong,nonatomic)UIButton *selectBtn;
@property(strong,nonatomic)UIButton *editeBtn;

@property(strong,nonatomic)UILabel *nameLab;

@property(strong,nonatomic)UILabel *mobileLab;

@property(strong,nonatomic)UILabel *addressLab;


@end
@implementation LB_AddressTableViewCell

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
    
    
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = [UIColor whiteColor];
    [self addSubview:view];
    [view mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(-10);
    }];
    
    
    self.nameLab = [[UILabel alloc]init];
    self.nameLab.text = @"夏天";
    self.nameLab.font = K_FONT_14;
    [view addSubview:self.nameLab];
    [self.nameLab mas_remakeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(view.mas_top).offset(8);
        make.left.equalTo(view.mas_left).offset(24);
        make.size.mas_equalTo(CGSizeMake(KSCREENWIDTH/2, 20));
    }];
    
    self.mobileLab = [[UILabel alloc]init];
    self.mobileLab.text = @"158****0987";
    self.mobileLab.font = K_FONT_13;
    self.mobileLab.textAlignment = NSTextAlignmentRight;
    [view addSubview:self.mobileLab];
    [self.mobileLab mas_remakeConstraints:^(MASConstraintMaker *make) {
        
        make.centerY.equalTo(self.nameLab.mas_centerY).offset(0);
        make.left.equalTo(self.nameLab.mas_right).offset(5);
        make.right.equalTo(view.mas_right).offset(-24);;
    }];

    self.addressLab = [[UILabel alloc]init];
    self.addressLab.text = @"福建省厦门市思明区软件园二期望海路16号之2 302室";
    self.addressLab.numberOfLines = 0;
    self.addressLab.textColor = [UIColor grayColor];
    self.addressLab.font = K_FONT_13;
    [view addSubview:self.addressLab];
    [self.addressLab mas_remakeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.nameLab.mas_bottom).offset(10);
        make.left.equalTo(view.mas_left).offset(24);
        make.right.equalTo(view.mas_right).offset(-24);
        make.height.equalTo(38);
    }];

    
    UILabel * line = [[UILabel alloc]init];
    line.backgroundColor = K_COLOR_LINE;
    [view addSubview:line];
    [line mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.addressLab.mas_bottom).offset(12);
        make.left.equalTo(view.mas_left).offset(14);
        make.right.equalTo(view.mas_right).offset(-14);
        make.height.equalTo(0.5);
    }];
    
    
    
    self.selectBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [view addSubview:self.selectBtn];
    [self.selectBtn setTitle:@"设为默认" forState:UIControlStateNormal];
    self.selectBtn.titleLabel.font = K_FONT_14;
    [self.selectBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [self.selectBtn setImage:[UIImage imageNamed:@"unselect"] forState:UIControlStateNormal];
    [self.selectBtn setImage:[UIImage imageNamed:@"select"] forState:UIControlStateSelected];
    [self.selectBtn mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(line.mas_bottom).offset(2);
        make.bottom.equalTo(view.mas_bottom).offset(-2);
        make.left.equalTo(view.mas_left).offset(30);
    }];
    
    
    self.deleteBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [view addSubview:self.deleteBtn];
    [self.deleteBtn setTitle:@"删除" forState:UIControlStateNormal];
    self.deleteBtn.titleLabel.font = K_FONT_14;
    [self.deleteBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [self.deleteBtn setImage:[UIImage imageNamed:@"delete"] forState:UIControlStateNormal];
    [self.deleteBtn mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(line.mas_bottom).offset(2);
        make.bottom.equalTo(view.mas_bottom).offset(-2);
        make.right.equalTo(view.mas_right).offset(-30);
        make.width.offset(50);
    }];
    
    self.editeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [view addSubview:self.editeBtn];
    [self.editeBtn setTitle:@"编辑" forState:UIControlStateNormal];
    self.editeBtn.titleLabel.font = K_FONT_14;
    [self.editeBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [self.editeBtn setImage:[UIImage imageNamed:@"edite"] forState:UIControlStateNormal];
    [self.editeBtn mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(line.mas_bottom).offset(2);
        make.bottom.equalTo(view.mas_bottom).offset(-2);
        make.right.equalTo(self.deleteBtn.mas_left).offset(-10);
        make.width.offset(60);
    }];


    
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
