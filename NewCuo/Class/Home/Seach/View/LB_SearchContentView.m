//
//  LB_SearchContentView.m
//  NewCuo
//
//  Created by 林波 on 2017/7/23.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_SearchContentView.h"
#import "LB_SearchEmptyView.h"

@interface LB_SearchContentView()

@property(strong,nonatomic)LB_SearchEmptyView *emptyView;

@end

@implementation LB_SearchContentView

-(id)initWithFrame:(CGRect)frame
{
    
    self = [super initWithFrame:frame];
    if (self) {
        
        [self initUI];
    }
    return self;
}
-(void)initUI{
    
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = [UIColor whiteColor];
    [self addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.height.offset(50);
    }];
    
    UILabel *historyLab =[[UILabel alloc]init];
    historyLab.font = [UIFont systemFontOfSize:15];
    historyLab.text = @"历史搜索";
    [view addSubview:historyLab];
    [historyLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_left).offset(14);
        make.centerY.equalTo(view.mas_centerY).offset(0);
    }];
    
    
    self.emptyView = [[LB_SearchEmptyView alloc]init];
    [self addSubview:self.emptyView];
    [self.emptyView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view.mas_bottom).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(0);
    }];
    
    
}

@end
