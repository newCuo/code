//
//  MyButton.m
//
//
//  Created by lirch on 16/3/12.
//  Copyright © 2016年 liruichun. All rights reserved.
//
#define ImageRatio 0.6
#define ImagePadding 0.2

#import "CustomButton.h"

@interface CustomButton ()
{
    ImageAndtitleLocation imageLocation;
}
@end

@implementation CustomButton

- (id)initWithFrame:(CGRect)frame imageAndtitleLocation:(ImageAndtitleLocation)imageAndtitleLocation
{
    self = [super initWithFrame:frame];
    if (self) {
        imageLocation = imageAndtitleLocation;
        // 图标显示方式
        self.imageView.contentMode = UIViewContentModeScaleAspectFit;
        // 文字居中
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        // 字体大小
        self.titleLabel.font = [UIFont systemFontOfSize:12];
        // 文字颜色
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self setTitleColor:[UIColor colorWithRed:0.847 green:0.396 blue:0.094 alpha:1.000] forState:UIControlStateSelected];
        [self setTitleColor:[UIColor colorWithRed:0.847 green:0.396 blue:0.094 alpha:1.000] forState:UIControlStateHighlighted];
    }
    return self;
}
// 内部图片的frame
- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat width = contentRect.size.width;
    CGFloat height = contentRect.size.height;
    CGFloat smallValue = width<height?width:height;
    CGFloat bigValue = width>height?width:height;
//    self.imageEdgeInsets = UIEdgeInsetsMake(smallValue * ImageRatio*ImagePadding, smallValue * ImageRatio*ImagePadding, smallValue * ImageRatio*ImagePadding, smallValue * ImageRatio*ImagePadding);
    CGFloat y = smallValue * ImageRatio*ImagePadding;
    CGFloat imgW = smallValue * ImageRatio-y;
    switch (imageLocation) {
        case imageTop:{
            return CGRectMake((bigValue-imgW)/2, y, imgW, imgW);
        }break;
//        case imageLeft:{
//            return CGRectMake(0, 0, height, height);
//        }break;
//        case imageBottom:{
//            return CGRectMake(0, height*0.4, width, height*0.6);
//        }break;
//        case imageRight:{
//            return CGRectMake(width- height, 0, height, height);
//        }break;
        default:
            return CGRectMake(0, 0, width, height);
            break;
    }
}

// 内部文字的frame
- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGFloat width = contentRect.size.width;
    CGFloat height = contentRect.size.height;
//    CGFloat bigValue = width>height?width:height;
    switch (imageLocation) {
        case imageTop:{
            return CGRectMake(0, height*ImageRatio, width, height*(1-ImageRatio));
        }break;
//        case imageLeft:{
//            return CGRectMake(height, 0, width-height, height);
//        }break;
//        case imageBottom:{
//            return CGRectMake(0, 0, width, height*0.4);
//        }break;
//        case imageRight:{
//            return CGRectMake(0, 0, width-height, height);
//        }break;
        default:
            return CGRectMake(height, 0, width-height, height);
            break;
    }
    
}
//重写方法，去高亮状态
- (void)setHighlighted:(BOOL)highlighted{
    
}
@end
