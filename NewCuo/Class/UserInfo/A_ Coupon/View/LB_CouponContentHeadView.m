//
//  LB_CouponContentHeadView.m
//  NewCuo
//
//  Created by 林波 on 2017/8/31.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_CouponContentHeadView.h"
@interface LB_CouponContentHeadView()
@property (weak, nonatomic) IBOutlet UILabel *scrollLab;
@property (weak, nonatomic) UIButton *selectBtn;
@property (weak, nonatomic) IBOutlet UIButton *firstBtn;
@end


@implementation LB_CouponContentHeadView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(id)init
{
    self =  [[[NSBundle mainBundle]loadNibNamed:@"LB_CouponContentHeadView" owner:self options:nil]objectAtIndex:0];
    if (self) {
        [self initUI];
    }
    return self;
}

-(void)initUI{
    
    [self.scrollLab mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.bottom).offset(0);
        make.height.offset(2);
        make.leading.equalTo(self);
        make.width.offset(KSCREENWIDTH/3);
    }];
    self.selectBtn = self.firstBtn;
    
    
}
- (IBAction)ClickItem:(UIButton *)sender {
    
    if (sender.selected==YES) {
        return;
    }
    self.selectBtn.selected = NO;
    sender.selected = YES;
    self.selectBtn = sender;
    [UIView animateWithDuration:0.38 animations:^{
        [self.scrollLab setCenter:CGPointMake(sender.center.x, self.scrollLab.center.y)];
    }];
}

@end
