//
//  MyButton.h
//  
//
//  Created by lirch on 16/3/12.
//  Copyright © 2016年 liruichun. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger,ImageAndtitleLocation) {
    imageTop= 0,//图片在上
    //以下三个位置没算好
    imageLeft,//图片在左
    imageBottom,//图片在下
    imageRight//图片在右
};
@interface CustomButton : UIButton
- (id)initWithFrame:(CGRect)frame imageAndtitleLocation:(ImageAndtitleLocation)imageAndtitleLocation;
@end
