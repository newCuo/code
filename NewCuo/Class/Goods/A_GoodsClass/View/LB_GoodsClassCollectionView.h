//
//  LB_GoodsClassCollectionView.h
//  NewCuo
//
//  Created by 林波 on 2017/7/31.
//  Copyright © 2017年 林波. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ClickItem)(void);

@interface LB_GoodsClassCollectionView : UIView


@property(strong,nonatomic)ClickItem clickItme;

@end
