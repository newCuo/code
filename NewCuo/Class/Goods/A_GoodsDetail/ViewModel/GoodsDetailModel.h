//
//  GoodsDetailModel.h
//  NewCuo
//
//  Created by lirch on 2017/8/22.
//  Copyright © 2017年 林波. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GoodsDetailModel : NSObject
///商品图片的url数组
@property (strong,nonatomic)NSArray *goodsImgUrlArr;
///商品名
@property (copy,nonatomic)NSString *goodsNameStr;
///商品副标题
@property (copy,nonatomic)NSString *goodsSubTitleStr;
///价格
@property (copy,nonatomic)NSString *goodsPriceStr;
///id
@property (copy,nonatomic)NSString *goodsIDStr;
///运费
@property (copy,nonatomic)NSString *freightStr;
///服务
@property (copy,nonatomic)NSString *serviceStr;
///提示的数组
@property (strong,nonatomic)NSArray *promptArr;
///商品评论
@property (copy,nonatomic)NSString *goodsReviewsStr;
///好评百分比
@property (copy,nonatomic)NSString *reviewsPercentageStr;
@end
