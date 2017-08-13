//
//  LB_AccountContentView.m
//  NewCuo
//
//  Created by 林波 on 2017/8/9.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_AccountContentView.h"
#import "LB_AccountTableViewCell.h"

@interface LB_AccountContentView()<UITableViewDelegate,UITableViewDataSource>

@property(strong,nonatomic)UIButton *allBtn;

@property(strong,nonatomic)UIButton *getBtn;

@property(strong,nonatomic)UIButton *payBtn;

@property(strong,nonatomic)UITableView *tableView;

@property(strong,nonatomic)UILabel *lineLab;


@end
@implementation LB_AccountContentView

-(id)init
{
    self = [super init];
    if (self) {
        [self initUI];
    }
    return self;
}

-(void)initUI{
    
    UIButton *(^markBtn)()=^{
        UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [btn setTitleColor:K_RED_COLOR forState:UIControlStateSelected];
        btn.titleLabel.font = [UIFont systemFontOfSize:14];
        return btn;
    };
    
    
    
    UIView * view  =[[UIView alloc]init];
    view.backgroundColor = [UIColor whiteColor];
    [self addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(0);
        make.height.offset(48);
        make.right.equalTo(self.mas_right).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
    }];
    
    
    self.lineLab = [[UILabel alloc]init];
    [view addSubview:self.lineLab];
    self.lineLab.backgroundColor = K_RED_COLOR;
    [self.lineLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view.mas_bottom).offset(-2);
        make.left.equalTo(view.mas_left).offset(0);
        make.height.offset(2);
        make.width.offset(KSCREENWIDTH/3);
        
    }];
    
    [view addSubview:self.allBtn = markBtn()];
    self.allBtn.selected = YES;
    [self.allBtn setTitle:@"全部" forState:UIControlStateNormal];
    [self.allBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view.mas_top).offset(0);
        make.left.equalTo(view.mas_left).offset(0);
        make.bottom.equalTo(view.mas_bottom).offset(-2);
        make.width.offset(KSCREENWIDTH/3);
    }];
    
    [view addSubview:self.getBtn = markBtn()];
    [self.getBtn setTitle:@"收入" forState:UIControlStateNormal];
    [self.getBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view.mas_top).offset(0);
        make.left.equalTo(view.mas_left).offset(KSCREENWIDTH/3);
        make.bottom.equalTo(view.mas_bottom).offset(-2);
        make.width.offset(KSCREENWIDTH/3);
    }];
    
    
    [view addSubview:self.payBtn = markBtn()];
    [self.payBtn setTitle:@"支出" forState:UIControlStateNormal];
    [self.payBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view.mas_top).offset(0);
        make.left.equalTo(view.mas_left).offset(KSCREENWIDTH/3*2);
        make.bottom.equalTo(view.mas_bottom).offset(-2);
        make.width.offset(KSCREENWIDTH/3);
    }];
    
    
    self.tableView = [[UITableView alloc]init];
    self.tableView.backgroundColor = K_BACKGROUND_COLOR;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(48);
        make.right.equalTo(self.mas_right).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(0);
        
    }];
    

    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 14;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    LB_AccountTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellForRowAtIndexPath"];
    if (!cell) {
        cell = [[LB_AccountTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellForRowAtIndexPath"];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}


@end
