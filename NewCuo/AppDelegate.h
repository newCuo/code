//
//  AppDelegate.h
//  NewCuo
//
//  Created by 林波 on 2017/7/19.
//  Copyright © 2017年 林波. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabBarViewController.h"


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;


-(TabBarViewController*)tabBarVC;

@end

