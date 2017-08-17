//
//  GoodsDetailBottomViewModel.m
//  NewCuo
//
//  Created by lirch on 2017/7/30.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "GoodsDetailBottomViewModel.h"
#import "GoodsDetailBottomView.h"
#import "GoodsDetailView.h"

@interface GoodsDetailBottomViewModel()




@end
@implementation GoodsDetailBottomViewModel


-(void)initUI{
    GoodsDetailBottomView *bottomView = [[GoodsDetailBottomView alloc]initWithFrame:CGRectMake(0, KSCREENHEIGHT - 60*SCALE, KSCREENWIDTH, 60*SCALE)];
    [self.LB_View addSubview:bottomView];
}
-(void)bindingEvent{
    
}
@end
