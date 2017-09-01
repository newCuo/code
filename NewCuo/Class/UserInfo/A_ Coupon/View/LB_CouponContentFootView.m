//
//  LB_CouponContentFootView.m
//  NewCuo
//
//  Created by 林波 on 2017/8/31.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_CouponContentFootView.h"

@interface LB_CouponContentFootView()
@property (weak, nonatomic) IBOutlet UIButton *footBtn;

@end


@implementation LB_CouponContentFootView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(id)init
{
    self =  [[[NSBundle mainBundle]loadNibNamed:@"LB_CouponContentFootView" owner:self options:nil]objectAtIndex:0];
    if (self) {
        [self initUI];
    }
    return self;
}

-(void)initUI{
    
    self.footBtn.layer.cornerRadius = 3;
    self.footBtn.layer.borderWidth = 1;
    self.footBtn.layer.borderColor = K_RED_COLOR.CGColor;
    self.footBtn.layer.masksToBounds = YES;
    
}
@end
