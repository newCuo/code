//
//  LB_UserOrderContentView.m
//  NewCuo
//
//  Created by 林波 on 2017/8/3.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_UserOrderContentView.h"
#import "LB_UserOrderTableViewCell.h"


@interface LB_UserOrderContentView()<UITableViewDelegate,UITableViewDataSource>

@property(strong,nonatomic)UITableView *tableView;



@end

@implementation LB_UserOrderContentView

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self initUI];
    }
    return self;
}

-(void)initUI{
    
    self.tableView = [[UITableView alloc]init];
    self.tableView.backgroundColor = K_BACKGROUND_COLOR;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.delegate =self;
    self.tableView.dataSource = self;
    [self addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.offset(0);
    }];
    self.tableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return self.list.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    CGFloat height = 180;
    
    NSDictionary * tt = self.list[indexPath.row];
    NSArray * i = [tt objectForKey:@"list"];
    if (i.count== 2) {
        height = height +80;
    }
    NSArray * btn = [tt objectForKey:@"btn"];
    if (btn.count>0) {
        height = height +34;
    }
    
    return height;
}


-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *tttt = @"cellForRowAtIndexPath";
    LB_UserOrderTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:tttt];
    if (!cell) {
        cell = [[LB_UserOrderTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tttt];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.contentType = indexPath.row%4;
    return cell;
    
}



@end
