//
//  LB_ContentView.m
//  NewCuo
//
//  Created by 林波 on 2017/7/23.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_ContentView.h"

@interface LB_ContentView ()

@property(strong,nonatomic)UIButton *loginBtn;

@property(strong,nonatomic)UIView *contentView;

@property(strong,nonatomic)UIButton *phoneRegist;

@property(strong,nonatomic)UIButton *forgetBtn;

@property(strong,nonatomic)UITextField *userNameTF;

@property(strong,nonatomic)UITextField *passwordTF;

@property(strong,nonatomic)UIButton *passwordShowBtn;

@end

@implementation LB_ContentView

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initUI];
        [self bindingEvent];
        
        
    }
    return self;
}

-(void)initUI{
    
    UIImageView *bannerImageView = [[UIImageView alloc]init];
    bannerImageView.image = [UIImage imageNamed:@"loginBanner"];
    [self addSubview:bannerImageView];
    [bannerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.mas_top).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.height.offset(100);
        
    }];
    
    
    UIView *view =[[UIView alloc]init];
    view.backgroundColor = [UIColor whiteColor];
    [self addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(bannerImageView.mas_bottom).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.height.offset(100);
    }];
    self.contentView = view;
    [self initContentView];
    
    self.loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.loginBtn.backgroundColor = K_MAIN_COLOR;
    self.loginBtn.layer.cornerRadius = 5;
    [self.loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    [self.loginBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.loginBtn.titleLabel.font = [UIFont systemFontOfSize:17];
    [self addSubview:self.loginBtn];
    [self.loginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView.mas_bottom).offset(35);
        make.right.equalTo(self.mas_right).offset(-20);
        make.left.equalTo(self.mas_left).offset(20);
        make.height.offset(45);
    }];
    
    self.phoneRegist = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.phoneRegist setTitle:@"手机快速注册" forState:UIControlStateNormal];
    [self.phoneRegist setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    self.phoneRegist.titleLabel.font = [UIFont systemFontOfSize:13];
    [self addSubview:self.phoneRegist];
    [self.phoneRegist mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.loginBtn.mas_bottom).offset(10);
        make.width.offset(80);
        make.left.equalTo(self.mas_left).offset(20);
        make.height.offset(35);
    }];
    
    
    
    self.forgetBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.forgetBtn setTitle:@"忘记密码" forState:UIControlStateNormal];
    [self.forgetBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    self.forgetBtn.titleLabel.font = [UIFont systemFontOfSize:13];
    [self addSubview:self.forgetBtn];
    [self.forgetBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.loginBtn.mas_bottom).offset(10);
        make.width.offset(60);
        make.right.equalTo(self.mas_right).offset(-20);
        make.height.offset(35);
    }];

    
    
}
-(void)initContentView{
    
    
    
    UILabel *lab  =[[UILabel alloc]init];
    lab.backgroundColor = K_LINE_COLOR;
    [self.contentView addSubview:lab];
    [lab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.offset(0.5);
        make.right.equalTo(self.contentView.mas_right).offset(0);
        make.left.equalTo(self.contentView.mas_left).offset(0);
        make.centerY.equalTo(self.contentView.mas_centerY).offset(0);
    }];
    
    
    
    UILabel *(^markLab)()=^(){
        UILabel *lab =[[UILabel alloc]init];
        lab.textAlignment = NSTextAlignmentRight;
        lab.font = [UIFont systemFontOfSize:15];
        lab.textColor = [UIColor grayColor];
        return lab;
    };
    
    UILabel *name = markLab();
    name.text = @"用户名";
    [self.contentView addSubview:name];
    [name mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.contentView.mas_top).offset(0);
        make.left.equalTo(self.contentView.mas_left).offset(20);
        make.bottom.equalTo(lab.mas_top).offset(0);
        make.width.offset(60);
    }];
    
    
    self.userNameTF = [[UITextField alloc]init];
    self.userNameTF.font = [UIFont systemFontOfSize:14];
    self.userNameTF.placeholder = @"请输入用户名/手机号";
    self.userNameTF.clearButtonMode = UITextFieldViewModeWhileEditing;
    [self.contentView addSubview:self.userNameTF];
    [self.userNameTF mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView.mas_top).offset(0);
        make.right.equalTo(self.contentView.mas_right).offset(-20);
        make.bottom.equalTo(lab.mas_top).offset(0);
        make.left.equalTo(name.mas_right).offset(10);
    }];
    
    UILabel *password = markLab();
    password.text = @"密码";
    [self.contentView addSubview:password];
    [password mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(lab.mas_bottom).offset(0);
        make.left.equalTo(self.contentView.mas_left).offset(20);
        make.bottom.equalTo(self.contentView.mas_bottom).offset(0);
        make.width.offset(60);
    }];
    
    
    self.passwordShowBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.passwordShowBtn setImage:[UIImage imageNamed:@"password_hide.png"] forState:UIControlStateNormal];
    [self.passwordShowBtn setImage:[UIImage imageNamed:@"password_show.png"] forState:UIControlStateSelected];
    [self.contentView addSubview:self.passwordShowBtn];
    [self.passwordShowBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(lab.mas_bottom).offset(0);
        make.right.equalTo(self.contentView.mas_right).offset(-20);
        make.bottom.equalTo(self.contentView.mas_bottom).offset(0);
        make.width.offset(40);
    }];
    
    
    self.passwordTF = [[UITextField alloc]init];
    self.passwordTF.font = [UIFont systemFontOfSize:14];
    self.passwordTF.secureTextEntry = YES;
    self.passwordTF.placeholder = @"请输入密码";
    self.passwordTF.clearButtonMode = UITextFieldViewModeWhileEditing;
    [self.contentView addSubview:self.passwordTF];
    [self.passwordTF mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(lab.mas_bottom).offset(0);
        make.left.equalTo(password.mas_right).offset(10);
        make.bottom.equalTo(self.contentView.mas_bottom).offset(0);
        make.right.equalTo(self.passwordShowBtn.mas_left).offset(-40);;
        
    }];

    
}

-(void)bindingEvent{
    
    [[self.passwordShowBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(UIButton *btn) {
        
        btn.selected = !btn.selected;
        self.passwordTF.secureTextEntry = !btn.selected;
        
    }];
    
    
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    [self endEditing:YES];
    
}
@end
