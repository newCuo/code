//
//  LB_SearchEmptyView.m
//  NewCuo
//
//  Created by 林波 on 2017/7/23.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_SearchEmptyView.h"

@interface LB_SearchEmptyView();



@end

@implementation LB_SearchEmptyView

-(id)initWithFrame:(CGRect)frame
{
    
    self = [super initWithFrame:frame];
    if (self) {
        [self initUI];
    }
    return self;
}

-(void)initUI{
    
    UIImageView *imageV =[[UIImageView alloc]init];
    imageV.image = [UIImage imageNamed:@"no_search.png"];
    [self addSubview:imageV];
    [imageV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.mas_centerX).offset(0);
        make.top.equalTo(self.mas_top).offset(70);
    }];
    
    UILabel *lab = [[UILabel alloc]init];
    lab.text = @"暂无搜索记录";
    lab.font = [UIFont systemFontOfSize:15];
    lab.textColor = [UIColor grayColor];
    [self addSubview:lab];
    [lab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(imageV.mas_bottom).offset(20);
        make.centerX.equalTo(self.mas_centerX).offset(0);
    }];
    
}

@end
