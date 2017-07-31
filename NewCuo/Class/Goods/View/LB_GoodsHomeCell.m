//
//  LB_GoodsHomeCell.m
//  NewCuo
//
//  Created by 林波 on 2017/7/28.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_GoodsHomeCell.h"
@interface LB_GoodsHomeCell();

@property(strong,nonnull)UILabel *lab;

@end

@implementation LB_GoodsHomeCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier

{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        self.backgroundColor = [UIColor whiteColor];
        [self initUI];
    }
    return self;
    
}

-(void)initUI{
    
    
    self.lab = [[UILabel alloc]init];
    self.lab.font = [UIFont systemFontOfSize:13];
    self.lab.textColor = [UIColor grayColor];
    [self addSubview:self.lab];
    [self.lab mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.mas_top).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(0);
        make.right.equalTo(self.mas_right).offset(-10);
        make.left.equalTo(self.mas_left).offset(14);
        
    }];
    
    
}

-(void)setModel:(LB_GoodsLeftModel *)model
{
    _model = model;
    
    self.lab.text = model.name;
    self.lab.textColor = model.isSelect?K_COLOR_RGB(230, 10, 10):[UIColor grayColor];
    self.backgroundColor = model.isSelect?K_BACKGROUND_COLOR:[UIColor whiteColor];
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    
    
    
    
    // Configure the view for the selected state
}

@end
