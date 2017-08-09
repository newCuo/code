//
//  LB_PointContentView.m
//  NewCuo
//
//  Created by 林波 on 2017/8/7.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_PointContentView.h"
#import "LB_PointTableViewCell.h"

@interface LB_PointContentView()<UITableViewDelegate,UITableViewDataSource>

@property(strong,nonatomic)UILabel *pointLab;

@property(strong,nonatomic)UIButton *getBtn;

@property(strong,nonatomic)UIButton *payBtn;

@property(strong,nonatomic)UIButton *btn;

@property(strong,nonatomic)UITableView *tableView;

@end

@implementation LB_PointContentView

-(id)init{
    self = [super init];
    if (self) {
        
        [self initUI];
        [self bindingEvent];
        
    }
    return self;
}

-(void)initUI{
    
    
    UIView *(^markView)() = ^(){
        UIView *view = [[UIView alloc]init];
        view.backgroundColor = [UIColor whiteColor];
        return view;
    };
    
    
    UIButton *(^markBtn)() = ^(){
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
        btn.titleLabel.font = [UIFont systemFontOfSize:14];
        
        
        return btn;
    };
    
    UIView *view1 =markView();
    [self addSubview:view1];
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.top).offset(0);
        make.left.equalTo(self.left).offset(0);
        make.right.equalTo(self.right).offset(0);
        make.height.offset(40);
    }];
    
    
    UILabel *lab = [[UILabel alloc]init];
    lab.text = @"我的积分总额:";
    lab.font = [UIFont systemFontOfSize:14];
    [self addSubview:lab];
    [lab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(view1.mas_centerY).offset(0);
        make.left.equalTo(view1.left).offset(14);
        make.width.offset(92);
    }];
    
    self.pointLab= [[UILabel alloc]init];
    self.pointLab.text = @"1230";
    self.pointLab.textColor = K_RED_COLOR;
    self.pointLab.font = [UIFont systemFontOfSize:14];
    [self addSubview:self.pointLab];
    [self.pointLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(view1.mas_centerY).offset(0);
        make.left.equalTo(lab.right).offset(0);
        make.right.equalTo(view1.right).offset(-14);
    }];

    
    
    UIView *view2 =markView();
    [self addSubview:view2];
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view1.bottom).offset(0);
        make.left.equalTo(self.left).offset(0);
        make.right.equalTo(self.right).offset(0);
        make.height.offset(40);
    }];
    
    [view2 addSubview:self.getBtn = markBtn()];
    [self.getBtn setTitle:@"获取" forState:UIControlStateNormal];
    [self.getBtn setBackgroundColor:K_RED_COLOR];
    [self.getBtn setSelected:YES];
    [self.getBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view2.mas_top).offset(0);
        make.left.equalTo(view2.mas_left).offset(0);
        make.bottom.equalTo(view2.mas_bottom).offset(0);
        make.width.offset(KSCREENWIDTH/2);
    }];
    
    [view2 addSubview:self.payBtn = markBtn()];
    [self.payBtn setTitle:@"支出" forState:UIControlStateNormal];
    [self.payBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view2.mas_top).offset(0);
        make.right.equalTo(view2.mas_right).offset(0);
        make.bottom.equalTo(view2.mas_bottom).offset(0);
        make.width.offset(KSCREENWIDTH/2);
    }];
    
    
    self.tableView = [[UITableView alloc]init];
    self.tableView.backgroundColor = K_BACKGROUND_COLOR;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self addSubview:self.tableView];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.tableView mas_remakeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.mas_top).offset(80);
        make.left.equalTo(self.mas_left).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(0);
        
        
    }];
    
    
    
}
-(void)bindingEvent{
    
    [[self.getBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(UIButton *btn) {
        
        if (btn.selected) {return;}
        btn.selected = !btn.selected;
        self.payBtn.selected = !btn.selected;
        [btn setBackgroundColor:btn.selected?K_RED_COLOR:[UIColor whiteColor]];
        [self.payBtn setBackgroundColor:btn.selected?[UIColor whiteColor]:K_RED_COLOR];
        
    }];
    
    
    [[self.payBtn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(UIButton *btn) {
        if (btn.selected) {return;}
        btn.selected = !btn.selected;
        self.getBtn.selected = !btn.selected;
        [btn setBackgroundColor:btn.selected?K_RED_COLOR:[UIColor whiteColor]];
        [self.getBtn setBackgroundColor:btn.selected?[UIColor whiteColor]:K_RED_COLOR];
    }];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    return 10;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 120;
    
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    LB_PointTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cellForRowAtIndexPath"];
    if (!cell) {
        cell = [[LB_PointTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellForRowAtIndexPath"];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
    
}

@end
