//
//  LB_AddressContentView.m
//  NewCuo
//
//  Created by 林波 on 2017/8/10.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_AddressContentView.h"
#import "LB_AddressTableViewCell.h"

@interface LB_AddressContentView()<UITableViewDelegate,UITableViewDataSource>

@property(strong,nonatomic)UITableView *tableView;

@property(strong,nonatomic)UIButton *addAddressBtn;


@end


@implementation LB_AddressContentView

-(id)init{
    
    self = [super init];
    if (self) {
        [self initUI];
    }
    return self;
}

-(void)initUI{
    
    self.addAddressBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.addAddressBtn.layer.cornerRadius = 5;
    [self.addAddressBtn setTitle:@"新增地址" forState:UIControlStateNormal];
    self.addAddressBtn.titleLabel.font = K_FONT_14;
    [self.addAddressBtn setBackgroundColor:K_MAIN_COLOR];
    [self addSubview:self.addAddressBtn];
    [self.addAddressBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.mas_bottom).offset(-5);
        make.left.equalTo(self.mas_left).offset(14);
        make.right.equalTo(self.mas_right).offset(-14);
        make.height.offset(45);
    }];
    
    
    self.tableView = [[UITableView alloc]init];
    self.tableView.backgroundColor = K_BACKGROUND_COLOR;
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self addSubview:self.tableView];
    [self.tableView mas_remakeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.mas_top).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.bottom.equalTo(self.addAddressBtn.mas_top).offset(-5);
        
    }];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 13;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 140;
}


-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    LB_AddressTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellForRowAtIndexPath"];
    if (!cell) {
        cell = [[LB_AddressTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellForRowAtIndexPath"];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
    
    
}


@end
