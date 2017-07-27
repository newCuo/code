//
//  LB_MyMessageCell.m
//  NewCuo
//
//  Created by 林波 on 2017/7/27.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_MyMessageCell.h"

@interface LB_MyMessageCell()

@property(strong,nonatomic)UIView *cellContentView;

@property(strong,nonatomic)UIButton *selectBtn;

@property(strong,nonatomic)UIButton *readBtn;

@property(strong,nonatomic)UILabel *titleLab;

@property(strong,nonatomic)UILabel *contentLab;

@property(strong,nonatomic)UILabel *timeLab;

@property(strong,nonatomic)UIButton *lookDeatailBtn;


@end

@implementation LB_MyMessageCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
}

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self initUI];
        [self bindingEvent];
    }
    return self;
}

-(void)initUI{
    
    self.backgroundColor = K_BACKGROUND_COLOR;
    
    
    
    self.selectBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.selectBtn setImage:[UIImage imageNamed:@"unselect"] forState:UIControlStateNormal];
    [self.selectBtn setImage:[UIImage imageNamed:@"select"] forState:UIControlStateSelected];
    [self addSubview:self.selectBtn];
    [self.selectBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(0);
        make.centerY.equalTo(self.mas_centerY).offset(0);
        make.size.equalTo(CGSizeMake(50, 50));
    }];
    
    
    self.cellContentView = [[UIView alloc]init];
    self.cellContentView.backgroundColor = [UIColor whiteColor];
    [self addSubview:self.cellContentView];
    [self.cellContentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(0);
    }];
    
    UILabel*line = [[UILabel alloc]init];
    line.backgroundColor = K_BACKGROUND_COLOR;
    [self.cellContentView addSubview:line];
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.offset(0.5);
        make.bottom.equalTo(self.cellContentView.mas_bottom).offset(-35);
        make.right.equalTo(self.cellContentView.mas_right).offset(-10);
        make.left.equalTo(self.cellContentView.mas_left).offset(10);
    }];
    
    
    self.readBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.readBtn setImage:[UIImage imageNamed:@"unread_msg"] forState:UIControlStateNormal];
    [self.readBtn setImage:[UIImage imageNamed:@"read_msg"] forState:UIControlStateSelected];
    [self.cellContentView addSubview:self.readBtn];
    [self.readBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.cellContentView.mas_left).offset(5);
        make.top.equalTo(self.cellContentView.mas_top).offset(10);
        make.size.equalTo(CGSizeMake(20, 20));
    }];
    
    
    self.titleLab  = [[UILabel alloc]init];
    self.titleLab.textColor = [UIColor darkGrayColor];
    self.titleLab.font = [UIFont systemFontOfSize:14];
    self.titleLab.text = @"标题";
    [self.cellContentView addSubview:self.titleLab];
    [self.titleLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.offset(40);
        make.right.equalTo(self.cellContentView.mas_right).offset(-14);
        make.top.equalTo(self.mas_top).offset(0);
        make.left.equalTo(self.readBtn.mas_right).offset(5);
    }];

    
    self.contentLab  = [[UILabel alloc]init];
    self.contentLab.textColor = [UIColor grayColor];
    self.contentLab.font = [UIFont systemFontOfSize:13];
    self.contentLab.text = @"标题werqwerqwersdfqwefdvvsdfw标题werqwerqwersdfqwefdvvsdfw标题werqwerqwersdfqwefdvvsdfw标题werqwerqwersdfqwefdvvsdfw标题werqwerqwersdfqwefdvvsdfw";
    self.contentLab.numberOfLines = 2;
    [self.cellContentView addSubview:self.contentLab];
    [self.contentLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(line.mas_top).offset(0);
        make.right.equalTo(self.cellContentView.mas_right).offset(-14);
        make.top.equalTo(self.titleLab.mas_bottom).offset(-5);
        make.left.equalTo(self.cellContentView.mas_left).offset(14);
    }];


    
    UILabel*line1 = [[UILabel alloc]init];
    line1.backgroundColor = K_LINE_COLOR;
    [self.cellContentView addSubview:line1];
    [line1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.offset(0.5);
        make.bottom.equalTo(self.cellContentView.mas_bottom).offset(0);
        make.right.equalTo(self.cellContentView.mas_right).offset(0);
        make.left.equalTo(self.cellContentView.mas_left).offset(0);
    }];
    
    self.timeLab  = [[UILabel alloc]init];
    self.timeLab.textColor = [UIColor grayColor];
    self.timeLab.font = [UIFont systemFontOfSize:13];
    self.timeLab.text = @"2017-09-08 21:45:12";
    [self.cellContentView addSubview:self.timeLab];
    [self.timeLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.offset(145);
        make.bottom.equalTo(self.cellContentView.mas_bottom).offset(0);
        make.top.equalTo(line.mas_bottom).offset(0);
        make.left.equalTo(self.cellContentView.mas_left).offset(14);
    }];
    
    self.lookDeatailBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.lookDeatailBtn setTitle:@"查看详情 >" forState:UIControlStateNormal];
    self.lookDeatailBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    [self.lookDeatailBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [self.cellContentView addSubview:self.lookDeatailBtn];
    [self.lookDeatailBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.offset(70);
        make.bottom.equalTo(self.cellContentView.mas_bottom).offset(0);
        make.top.equalTo(line.mas_bottom).offset(0);
        make.right.equalTo(self.cellContentView.mas_right).offset(-13);
    }];
    
    
}

-(void)bindingEvent{
    
    [[self.selectBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(UIButton* btn) {
        btn.selected = !btn.selected;
    }];
}


-(void)setIsOpen:(BOOL)isOpen
{
    _isOpen = isOpen;
    if (isOpen==YES) {
        [UIView animateWithDuration:0.38 animations:^{
            [self.cellContentView remakeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(self.mas_top).offset(0);
                make.right.equalTo(self.mas_right).offset(0);
                make.left.equalTo(self.mas_left).offset(50);
                make.bottom.equalTo(self.mas_bottom).offset(-0.5);
            }];
        }];
    }else
    {
        [UIView animateWithDuration:0.38 animations:^{
            [self.cellContentView remakeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(self.mas_top).offset(0);
                make.right.equalTo(self.mas_right).offset(0);
                make.left.equalTo(self.mas_left).offset(0);
                make.bottom.equalTo(self.mas_bottom).offset(-0.5);
            }];
        }];
    }
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
