//
//  LB_PuleAndDownCustomView.m
//  NewCuo
//
//  Created by 林波 on 2017/8/16.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_PuleAndDownCustomView.h"

@interface LB_PuleAndDownCustomView ()

@property(strong,nonatomic)UIButton *pulsBtn;

@property(strong,nonatomic)UIButton *minusBtn;

@property(strong,nonatomic)UITextField *textField;

@end


@implementation LB_PuleAndDownCustomView

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initUI];
    }
    return self;
}

-(id)init
{
    self = [super init];
    if (self) {
        [self initUI];
        [self bindingEvent];
    }
    return self;
}


-(void)initUI{
    
    
    self.layer.cornerRadius = 3;
    self.layer.borderColor = [UIColor grayColor].CGColor;
    self.layer.borderWidth = 0.5;
    
    self.minusBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.minusBtn.backgroundColor = K_COLOR_RGBA(240, 240, 240, 1);
    [self.minusBtn setImage:[UIImage imageNamed:@"minus"] forState:UIControlStateNormal];
    [self addSubview:self.minusBtn];
    [self.minusBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.leading.bottom.equalTo(self);
//        make.width.offset(self.frame.size.width/3);
        make.width.equalTo(self).dividedBy(3);
    }];
    
    self.pulsBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.pulsBtn.backgroundColor = K_COLOR_RGBA(240, 240, 240, 1);
    [self.pulsBtn setImage:[UIImage imageNamed:@"plus"] forState:UIControlStateNormal];
    [self addSubview:self.pulsBtn];
    [self.pulsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.equalTo(self);
        make.right.equalTo(self.mas_right).offset(0);
//        make.width.offset(self.frame.size.width/3);
        make.width.equalTo(self).dividedBy(3);
    }];
    
   
    
    UILabel *(^markLine)() = ^{
        UILabel *lab = [[UILabel alloc]init];
        lab.backgroundColor = K_COLOR_RGBA(140, 140, 140, 1);
        return lab;
    };

    
    UILabel *lab1 = markLine();
    [self addSubview:lab1];
    [lab1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.equalTo(self);
        make.width.offset(1);
        make.left.equalTo(self.minusBtn.mas_right).offset(0);
    }];
    
    UILabel *lab2 = markLine();
    [self addSubview:lab2];
    [lab2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.equalTo(self);
        make.width.offset(1);
        make.right.equalTo(self.pulsBtn.mas_left).offset(0);
    }];
    
    self.textField = [[UITextField alloc]init];
    self.textField.font = K_FONT_12;
    self.textField.textAlignment = NSTextAlignmentCenter;
    self.textField.keyboardType = UIKeyboardTypeNumberPad;
    [self addSubview:self.textField];
    [self.textField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.equalTo(self);
        make.left.equalTo(lab1.mas_right).offset(0);;
        make.right.equalTo(lab2.mas_left).offset(0);
    }];
    self.textField.text = @"1";
    
}
-(void)bindingEvent{
    @weakify(self);
    [[self.textField rac_textSignal] subscribeNext:^(id x) {
        @strongify(self);
//        int i = [self.textField.text intValue];
        NSLog(@"%@",self.textField.text);
    }];
    
    [[self.minusBtn rac_signalForControlEvents:(UIControlEventTouchUpInside)] subscribeNext:^(id x) {
        @strongify(self);
        int i = [self.textField.text intValue];
        if (i == 1) {
            self.minusBtn.enabled = NO;
        }else{
            self.minusBtn.enabled = YES;
            self.textField.text = [NSString stringWithFormat:@"%d", i-1];
        }
    }];
    [[self.pulsBtn rac_signalForControlEvents:(UIControlEventTouchUpInside)] subscribeNext:^(id x) {
        @strongify(self);
        int i = [self.textField.text intValue];
        self.textField.text = [NSString stringWithFormat:@"%d", i+1];
        self.minusBtn.enabled = YES;
    }];
}

@end
