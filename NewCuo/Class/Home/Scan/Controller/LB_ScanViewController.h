//
//  LB_ScanViewController.h
//  NewCuo
//
//  Created by 林波 on 2017/9/1.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "BaseViewController.h"
#import "LB_ScanViewModel.h"

@interface LB_ScanViewController : BaseViewController

@property(strong,nonatomic)LB_ScanViewModel *scan;
@property(copy,nonatomic)NSString *url;

@end
