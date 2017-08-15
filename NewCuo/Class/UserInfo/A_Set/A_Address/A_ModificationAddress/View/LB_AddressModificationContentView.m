//
//  LB_AddressModificationContentView.m
//  NewCuo
//
//  Created by 林波 on 2017/8/14.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_AddressModificationContentView.h"
@interface LB_AddressModificationContentView()

@property(strong,nonatomic) UITextField *userTF;

@property(strong,nonatomic) UITextField *mobileTF;

@property(strong,nonatomic)UITextField *detialAddressTF;

@property(strong,nonatomic) UILabel *zoonLab;


@end
@implementation LB_AddressModificationContentView

-(id)init
{
    self = [super init];
    if (self) {
        [self initUI];
    }
    return self;
}

-(void)initUI{
    
    
    
    UILabel *(^markLine)()=^{
        UILabel *line = [[UILabel alloc]init];
        line.backgroundColor = K_LINE_COLOR;
        return line;
    };
    
    UILabel *(^markTitleLab)()=^{
        UILabel *title = [[UILabel alloc]init];
        title.font = K_FONT_14;
        return title;
    };
    
    
    UITextField *(^markTextField)()=^{
        UITextField *field = [[UITextField alloc]init];
        field.clearButtonMode=UITextFieldViewModeWhileEditing;
        field.font = K_FONT_13;
        return field;
    };
    
    
    
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = [UIColor whiteColor];
    [self addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.trailing.leading.equalTo(self);
        make.height.offset(184);
    }];
    
    
    UILabel *line1 = markLine();
    [view addSubview:line1];
    [line1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.leading.equalTo(view);
        make.top.equalTo(view.mas_top).offset(45);
        make.height.offset(0.5);
    }];
    UILabel *line2 = markLine();
    [view addSubview:line2];
    [line2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.leading.equalTo(view);
        make.top.equalTo(view.mas_top).offset(90);
        make.height.offset(0.5);
    }];
    UILabel *line3 = markLine();
    [view addSubview:line3];
    [line3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.leading.equalTo(view);
        make.top.equalTo(view.mas_top).offset(135);
        make.height.offset(0.5);
    }];
    
    
    
    UILabel *title1 = markTitleLab();
    title1.text = @"收货人:";
    [view addSubview:title1];
    [title1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(view.mas_left).offset(14);
        make.top.equalTo(view.mas_top).offset(0);
        make.bottom.equalTo(line1.mas_top).offset(0);
        make.width.offset(65);
    }];
    
    UILabel *title2 = markTitleLab();
    title2.text = @"联系方式:";
    [view addSubview:title2];
    [title2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(view.mas_left).offset(14);
        make.top.equalTo(line1.mas_bottom).offset(0);
        make.bottom.equalTo(line2.mas_top).offset(0);
        make.width.offset(65);
    }];
    
    UILabel *title3 = markTitleLab();
    title3.text = @"所在地区:";
    [view addSubview:title3];
    [title3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(view.mas_left).offset(14);
        make.top.equalTo(line2.mas_bottom).offset(0);
        make.bottom.equalTo(line3.mas_top).offset(0);
        make.width.offset(65);
    }];
    
    UILabel *title4 = markTitleLab();
    title4.text = @"详细地址:";
    [view addSubview:title4];
    [title4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(view.mas_left).offset(14);
        make.top.equalTo(line3.mas_bottom).offset(0);
        make.bottom.equalTo(view.mas_bottom).offset(0);
        make.width.offset(65);
    }];
    
    
    UIImageView *imagev = [[UIImageView alloc]init];
    imagev.image = [UIImage imageNamed:@"right"];
    [view addSubview:imagev];
    [imagev mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(view.mas_right).offset(-14);
        make.centerY.equalTo(title3.centerY).offset(0);
        make.size.mas_equalTo(CGSizeMake(10, 16));
    }];
    
    self.userTF = markTextField();
    [view addSubview:self.userTF];
    [self.userTF mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(view.mas_right).offset(-14);
        make.centerY.equalTo(title1.centerY).offset(0);
        make.left.equalTo(title1.mas_right).offset(4);
    }];
    
    self.mobileTF = markTextField();
    [view addSubview:self.mobileTF];
    [self.mobileTF mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(view.mas_right).offset(-14);
        make.centerY.equalTo(title2.centerY).offset(0);
        make.left.equalTo(title2.mas_right).offset(4);
    }];
    
    
    self.detialAddressTF = markTextField();
    [view addSubview:self.detialAddressTF];
    [self.detialAddressTF mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(view.mas_right).offset(-14);
        make.centerY.equalTo(title4.centerY).offset(0);
        make.left.equalTo(title4.mas_right).offset(4);
    }];
    
    
    
    self.zoonLab = [[UILabel alloc]init];
    self.zoonLab.font = K_FONT_13;
    self.zoonLab.text = @"福建厦门思明区";
    self.zoonLab.textColor = [UIColor grayColor];
    [view addSubview:self.zoonLab];
    [self.zoonLab mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.right.equalTo(imagev.mas_left).offset(-4);
        make.centerY.equalTo(title3.centerY).offset(0);
        make.left.equalTo(title3.mas_right).offset(4);
    }];
    
    
}


@end
