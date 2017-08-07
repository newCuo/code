//
//  LB_CustormView.m
//  NewCuo
//
//  Created by 林波 on 2017/7/25.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_CustormView.h"

@interface LB_CustormView();

@property(strong,nonatomic)NSDictionary *dic;

@property(strong,nonatomic)UILabel *countLab;

@property(strong,nonatomic)ClickOrderItem clickOrderItem;

@end

@implementation LB_CustormView

-(id)initWithDic:(NSDictionary*)dic clickOrderItem:(ClickOrderItem)clickOrderItem{
    
    self = [super init];
    if (self) {
        self.dic = dic;
        self.clickOrderItem = clickOrderItem;
        [self initUIclickOrderItem];
    }
    return self;
}
-(void)initUIclickOrderItem{
    
    
    UIImageView * imageV = [[UIImageView alloc]init];
    imageV.image = [UIImage imageNamed:[self.dic objectForKey:@"Image"]];
    [self addSubview:imageV];
    [imageV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(10);
        make.centerX.equalTo(self.mas_centerX).offset(0);
        make.size.mas_equalTo(CGSizeMake(25, 25));
    }];
    
    
    self.countLab = [[UILabel alloc]init];
    self.countLab.hidden = YES;
    self.countLab.backgroundColor = [UIColor redColor];
    self.countLab.textColor = [UIColor whiteColor];
    self.countLab.font = [UIFont systemFontOfSize:11];
    self.countLab.textAlignment = NSTextAlignmentCenter;
    self.countLab.layer.cornerRadius = 5;
    self.countLab.layer.masksToBounds = YES;
    [self addSubview:self.countLab];
    [self.countLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_top).offset(10);
        make.left.equalTo(imageV.mas_right).offset(-3);
        make.height.offset(14);
        make.width.offset(20);
    }];
    
    UILabel *lab = [[UILabel alloc]init];
    lab.font = [UIFont systemFontOfSize:13];
    lab.textColor = [UIColor darkTextColor];
    lab.textAlignment = NSTextAlignmentCenter;
    lab.text = [self.dic objectForKey:@"title"];
    [self addSubview:lab];
    [lab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(imageV.mas_bottom).offset(0);
        make.left.equalTo(self.mas_left).offset(0);
        make.right.equalTo(self.mas_right).offset(0);
        make.bottom.equalTo(self.mas_bottom).offset(0);
    }];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.offset(0);
    }];
    
    @weakify(self);
    [[btn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(id x) {
        @strongify(self);
        int t = [self.dic[@"type"] intValue];
        switch (t) {
            case 1:
                 self.clickOrderItem(ORDERTYPE_WAITE_PAY);
                break;
            case 2:
                 self.clickOrderItem(ORDERTYPE_WAITE_TAKE);
                break;
            case 3:
                 self.clickOrderItem(ORDERTYPE_WAITE_APPRAISE);
                break;
            case 4:
                 self.clickOrderItem(ORDERTYPE_RETURN);
                break;
            default:
                break;
        }
    }];
    
}




@end
