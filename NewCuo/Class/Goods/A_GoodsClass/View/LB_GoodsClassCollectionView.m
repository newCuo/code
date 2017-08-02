//
//  LB_GoodsClassCollectionView.m
//  NewCuo
//
//  Created by 林波 on 2017/7/31.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_GoodsClassCollectionView.h"
#import "LB_GoodsHomeCollectionViewCell.h"

#define BrankViewCellIdentifier  @"BrankViewCellIdentifier"


@interface LB_GoodsClassCollectionView()<UICollectionViewDataSource,UICollectionViewDelegate>

@property(strong,nonatomic)UICollectionView *collectionView;



@end


@implementation LB_GoodsClassCollectionView

-(id)init{
    
    self = [super init];
    
    if (self) {
        [self initUI];
    }
    return self;
}
-(void)initUI{
    
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.itemSize = CGSizeMake((KSCREENWIDTH-20)/2, (KSCREENWIDTH-20)/2+20);
    layout.sectionInset = UIEdgeInsetsMake(5, 6,10, 5);
    layout.minimumLineSpacing = 5;
    layout.minimumInteritemSpacing = 5;
    
    self.collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, KSCREENWIDTH, KSCREENHEIGHT-64-45) collectionViewLayout:layout];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    [self addSubview:self.collectionView];
    
    [self.collectionView registerClass:[LB_GoodsHomeCollectionViewCell class] forCellWithReuseIdentifier:BrankViewCellIdentifier];
    
    
    
    
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return 8;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    LB_GoodsHomeCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:BrankViewCellIdentifier forIndexPath:indexPath];
    if (!cell) {
        cell = [[LB_GoodsHomeCollectionViewCell alloc]init];
    }
    
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    
}


@end
