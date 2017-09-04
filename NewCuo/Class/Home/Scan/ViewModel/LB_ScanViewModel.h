//
//  LB_ScanViewModel.h
//  NewCuo
//
//  Created by 林波 on 2017/9/1.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_BaseViewModel.h"

typedef void(^ScanReturn)(NSString *content);

@interface LB_ScanViewModel : LB_BaseViewModel

@property(strong,nonatomic)ScanReturn scanReturn;

@end
