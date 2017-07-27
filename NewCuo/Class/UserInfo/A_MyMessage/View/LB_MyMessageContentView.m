//
//  LB_MessageContentView.m
//  NewCuo
//
//  Created by 林波 on 2017/7/27.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_MyMessageContentView.h"
#import "LB_MyMessageCell.h"

@interface LB_MyMessageContentView()<UITableViewDelegate,UITableViewDataSource>

@property(strong,nonatomic)UITableView *tableView;

@end

@implementation LB_MyMessageContentView

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
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.backgroundColor = K_BACKGROUND_COLOR;
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    [self addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(0);
    }];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 120;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    static NSString *ttt = @"table";
    LB_MyMessageCell * cell = [tableView dequeueReusableCellWithIdentifier:ttt];
    if (!cell) {
        cell = [[LB_MyMessageCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ttt];
        RAC(cell,isOpen) = RACObserve(self, isOpen);
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;

}


@end
