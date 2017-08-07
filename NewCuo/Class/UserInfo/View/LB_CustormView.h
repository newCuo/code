//
//  LB_CustormView.h
//  NewCuo
//
//  Created by 林波 on 2017/7/25.
//  Copyright © 2017年 林波. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ClickOrderItem)(int type);

@interface LB_CustormView : UIView

-(id)initWithDic:(NSDictionary*)dic clickOrderItem:(ClickOrderItem)clickOrderItem;




@end
