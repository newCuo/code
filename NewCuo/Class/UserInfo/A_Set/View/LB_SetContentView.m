//
//  LB_SetContentView.m
//  NewCuo
//
//  Created by 林波 on 2017/7/25.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_SetContentView.h"

@interface LB_SetContentView ()

@property(nonatomic,strong)UIImageView *headImageView;

@property(nonatomic,strong)UILabel *nickNameLab;

@property(nonatomic,strong)UILabel *sexLab;

@property(nonatomic,strong)UILabel *birthLab;

@property(nonatomic,strong)UILabel *safeLab;

@end

@implementation LB_SetContentView

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initUI];
    }
    
    return self;
}
-(void)initUI{
    
    
    
    UILabel *(^markLab)() = ^(){
        UILabel *lab = [[UILabel alloc]init];
        lab.font = [UIFont systemFontOfSize:13];
        lab.textAlignment = NSTextAlignmentRight;
        lab.textColor = [UIColor grayColor];
        return lab;
    };
    
    UIView *(^markView)(NSString*name,USERTYPE type) = ^(NSString*name,USERTYPE type){
        UIView *view = [[UIView alloc]init];
        view.backgroundColor = [UIColor whiteColor];
        UILabel *lab = [[UILabel alloc]init];
        lab.font = [UIFont systemFontOfSize:14];
        lab.text = name;
        [view addSubview:lab];
        [lab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(view.mas_left).offset(14);
            make.size.mas_equalTo(CGSizeMake(120, 30));
            make.centerY.equalTo(view.centerY).offset(0);
        }];
       
        UIImageView *image = [[UIImageView alloc]init];
        image.image = [UIImage imageNamed:@"right"];
        [view addSubview:image];
        [image mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(view.mas_right).offset(-14);
            make.size.mas_equalTo(CGSizeMake(10, 15));
            make.centerY.equalTo(view.centerY).offset(0);
        }];
        
        
        UIButton *Btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [view addSubview:Btn];
        [Btn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.equalTo(view.mas_right).offset(0);
            make.left.equalTo(view.mas_left).offset(0);
            make.top.equalTo(view.mas_top).offset(0);
            make.bottom.equalTo(view.mas_bottom).offset(0);
        }];
        
        @weakify(self);
        [[Btn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(id x) {
            @strongify(self);
            self.clickItem(type);
        }];
        return view;
    };
    
    
    //头像
    UIView *headView = markView(@"头像",USERHEADIMAGE);
    [self addSubview:headView];
    [headView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.top).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.height.offset(80);
    }];
    self.headImageView = [[UIImageView alloc]init];
    self.headImageView.layer.cornerRadius = 25;
    self.headImageView.layer.masksToBounds = YES;
    self.headImageView.image = [UIImage imageNamed:@"c_defaultImg"];
    [headView addSubview:self.headImageView];
    [self.headImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.right.equalTo(headView.mas_right).offset(-34);
        make.size.mas_equalTo(CGSizeMake(50, 50));
        make.centerY.equalTo(headView.centerY).offset(0);
        
    }];
    
    
    // 昵称
    UIView *nickView = markView(@"昵称",USERNICKNAME);
    [self addSubview:nickView];
    [nickView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(headView.bottom).offset(0.5);
        make.left.equalTo(self.mas_left).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.height.offset(45);
    }];
    [nickView addSubview:self.nickNameLab = markLab()];
    self.nickNameLab.text = @"nic";
    [self.nickNameLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(nickView.mas_right).offset(-34);
        make.size.mas_equalTo(CGSizeMake(100, 26));
        make.centerY.equalTo(nickView.centerY).offset(0);
    }];
    
    
    
    //性别
    UIView *sexView = markView(@"性别",USERSEX);
    [self addSubview:sexView];
    [sexView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(nickView.bottom).offset(0.5);
        make.left.equalTo(self.mas_left).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.height.offset(45);
    }];
    [sexView addSubview:self.sexLab = markLab()];
    self.sexLab.text = @"性别";
    [self.sexLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(sexView.mas_right).offset(-34);
        make.size.mas_equalTo(CGSizeMake(100, 26));
        make.centerY.equalTo(sexView.centerY).offset(0);
    }];

    
    
    //出生年月
    UIView *birthView = markView(@"出生日期",USERBIRTH);
    [self addSubview:birthView];
    [birthView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(sexView.bottom).offset(0.5);
        make.left.equalTo(self.mas_left).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.height.offset(45);
    }];
    [birthView addSubview:self.birthLab = markLab()];
    self.birthLab.text = @"出生日期";
    [self.birthLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(birthView.mas_right).offset(-34);
        make.size.mas_equalTo(CGSizeMake(100, 26));
        make.centerY.equalTo(birthView.centerY).offset(0);
    }];

    
    UIView *addressView = markView(@"地址管理",USERADDRESS);
    [self addSubview:addressView];
    [addressView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(birthView.bottom).offset(20);
        make.left.equalTo(self.mas_left).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.height.offset(45);
    }];

    
    UIView *safeView = markView(@"账户安全",USERSAFE);
    [self addSubview:safeView];
    [safeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(addressView.bottom).offset(0.5);
        make.left.equalTo(self.mas_left).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.height.offset(45);
    }];
    [safeView addSubview:self.safeLab = markLab()];
    self.safeLab.text = @"可修改密码";
    [self.safeLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(safeView.mas_right).offset(-34);
        make.size.mas_equalTo(CGSizeMake(100, 26));
        make.centerY.equalTo(safeView.centerY).offset(0);
    }];

    



    
    
    
    
}

@end
