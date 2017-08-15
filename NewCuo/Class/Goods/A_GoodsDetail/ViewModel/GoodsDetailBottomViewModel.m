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

@property(weak,nonatomic)BaseViewController *viewController;


@end
@implementation GoodsDetailBottomViewModel
//-(id)initWithViewController:(BaseViewController*)viewController{
//    
//    self = [super init];
//    if (self) {
//        self.viewController = viewController;
//        [self initUI];
//        [self bindingEvent];
//    }
//    return self;
//}

-(void)initUI{
    GoodsDetailBottomView *bottomView = [[GoodsDetailBottomView alloc]initWithFrame:CGRectMake(0, KSCREENHEIGHT - 60*SCALE, KSCREENWIDTH, 60*SCALE)];
//    [self.viewController.view addSubview:bottomView];
    [self.LB_View addSubview:bottomView];
}
-(void)bindingEvent{
    
}
@end
