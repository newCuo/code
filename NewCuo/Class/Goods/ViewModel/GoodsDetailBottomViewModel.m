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

@property(strong,nonatomic)BaseViewController *viewController;


@end
@implementation GoodsDetailBottomViewModel
-(id)initWithViewController:(BaseViewController*)viewController{
    
    self = [super init];
    if (self) {
        self.viewController = viewController;
        [self initUI];
        [self bindingEvent];
    }
    return self;
}

-(void)initUI{
//    GoodsDetailView *detailView = [[GoodsDetailView alloc]initWithFrame:CGRectMake(0, 0, KSCREENWIDTH, KSCREENHEIGHT-60*SCALE)];
    GoodsDetailBottomView *bottomView = [[GoodsDetailBottomView alloc]initWithFrame:CGRectMake(0, KSCREENHEIGHT - 60*SCALE, KSCREENWIDTH, 60*SCALE)];
    
//    [self.viewController.view addSubview:detailView];
    [self.viewController.view addSubview:bottomView];
}
-(void)bindingEvent{
    
}
@end
