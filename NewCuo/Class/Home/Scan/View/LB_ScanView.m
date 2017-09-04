//
//  LB_ScanView.m
//  NewCuo
//
//  Created by 林波 on 2017/9/1.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_ScanView.h"
@interface LB_ScanView()

@property(strong,nonatomic)UIImageView *imagev;

@end
@implementation LB_ScanView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(id)init
{
    self = [super init];
    if (self) {
    
        
        
        UILabel *lab = [[UILabel alloc]init];
        [self addSubview:lab];
        lab.text = @"扫描二维码";
        lab.textColor = [UIColor whiteColor];
        lab.font = [UIFont systemFontOfSize:18];
        [lab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.centerX).offset(0);
            make.top.equalTo(self.mas_top).offset(20);
            make.size.mas_equalTo(CGSizeMake(100, 40));
        }];
        
        
        _imagev = [[UIImageView alloc]init];
        _imagev.image = [UIImage imageNamed:@"photo_box"];
        [self addSubview:_imagev];
       [_imagev mas_makeConstraints:^(MASConstraintMaker *make) {
           make.center.mas_equalTo(self.center);
           make.size.mas_equalTo(CGSizeMake(150, 150));
       }];
    }
    return self;
}


@end
