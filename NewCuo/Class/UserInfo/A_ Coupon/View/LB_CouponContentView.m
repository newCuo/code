//
//  LB_CouponContentView.m
//  NewCuo
//
//  Created by 林波 on 2017/9/1.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_CouponContentView.h"
#import "LB_CouponContentCell.h"
@interface LB_CouponContentView()<UITableViewDelegate>
{
    UINib *markNib;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
@implementation LB_CouponContentView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(id)init
{
    self =  [[[NSBundle mainBundle]loadNibNamed:@"LB_CouponContentView" owner:self options:nil]objectAtIndex:0];
    if (self) {
        [self initUI];
    }
    return self;
}

-(void)initUI{
    
    
    
    
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *mark = @"mark";
    if (!markNib) {
        markNib = [UINib nibWithNibName:@"LB_CouponContentCell" bundle:nil];
        [tableView registerNib:markNib forCellReuseIdentifier:mark];
    }
    LB_CouponContentCell *cell = [tableView dequeueReusableCellWithIdentifier:mark];
    return cell;
}


@end
