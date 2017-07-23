//
//  TabBarViewController.m
//  NewCuo
//
//  Created by 林波 on 2017/7/19.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "TabBarViewController.h"
#import "HomeViewController.h"
#import "ShoppingViewController.h"
#import "GoodsViewController.h"
#import "UserInfoViewController.h"


@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
   
    
    HomeViewController *home = [[HomeViewController alloc]init];
    UINavigationController *homeNC = [[UINavigationController alloc]initWithRootViewController:home];
    homeNC.navigationBar.hidden = YES;
    
    
    UITabBarItem * homeItem = [[UITabBarItem alloc]initWithTitle:@"首页" image:[UIImage imageNamed:@"tabbar_home"] selectedImage:[UIImage imageNamed:@"tabbar_home_select"]];
    homeNC.tabBarItem = homeItem;
    
    
    GoodsViewController *goods = [[GoodsViewController alloc]init];
    UINavigationController *goodsNC = [[UINavigationController alloc]initWithRootViewController:goods];
    goodsNC.navigationBar.hidden = YES;

    UITabBarItem * goodsItem = [[UITabBarItem alloc]initWithTitle:@"商品分类" image:[UIImage imageNamed:@"tabbar_item"] selectedImage:[UIImage imageNamed:@"tabbar_item_select"]];
    goodsNC.tabBarItem = goodsItem;

    
    
    ShoppingViewController *shopping = [[ShoppingViewController alloc]init];
    UINavigationController *shoppingNC = [[UINavigationController alloc]initWithRootViewController:shopping];
    shoppingNC.navigationBar.hidden = YES;
    UITabBarItem * shoppingItem = [[UITabBarItem alloc]initWithTitle:@"购物车" image:[UIImage imageNamed:@"tabbar_buy"] selectedImage:[UIImage imageNamed:@"tabbar_buy_select"]];
    shoppingNC.tabBarItem = shoppingItem;

    
    UserInfoViewController *userInfo = [[UserInfoViewController alloc]init];
    UINavigationController *userInfoNC = [[UINavigationController alloc]initWithRootViewController:userInfo];
    userInfoNC.navigationBar.hidden = YES;
    UITabBarItem * userInfoItem = [[UITabBarItem alloc]initWithTitle:@"我的" image:[UIImage imageNamed:@"tabbar_user"] selectedImage:[UIImage imageNamed:@"tabbar_user_select"]];
    userInfoNC.tabBarItem = userInfoItem;

    
    NSArray * rr = @[homeNC,goodsNC,shoppingNC,userInfoNC];
    self.viewControllers = rr;
    
    
    self.tabBar.tintColor = K_MAIN_COLOR;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
