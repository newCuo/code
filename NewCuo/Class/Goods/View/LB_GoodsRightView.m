//
//  LB_GoodsRightView.m
//  NewCuo
//
//  Created by 林波 on 2017/7/28.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_GoodsRightView.h"
#import "LB_GoodsHomeCollectionViewCell.h"
#import "LB_GoodsRightCollectionHeadView.h"

#define BrankViewCellIdentifier @"BrankViewCellIdentifier"
#define HeaderIdentifier        @"HeaderIdentifier"


@interface LB_GoodsRightView()<UICollectionViewDataSource,UICollectionViewDelegate>

@property(strong,nonatomic)UICollectionView *collectionView;

@end
@implementation LB_GoodsRightView

-(id)init{
    
    self = [super init];
    
    if (self) {
        [self initUI];
    }
    return self;
}
-(void)initUI{
    
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.itemSize = CGSizeMake((KSCREENWIDTH-130)/3, (KSCREENWIDTH-130)/3+20);
    layout.sectionInset = UIEdgeInsetsMake(5, 6,10, 5);
    layout.minimumLineSpacing = 5;
    layout.minimumInteritemSpacing = 5;
    
    self.collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, KSCREENWIDTH-100, KSCREENHEIGHT-64-50) collectionViewLayout:layout];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    [self addSubview:self.collectionView];
    
    [self.collectionView registerClass:[LB_GoodsHomeCollectionViewCell class] forCellWithReuseIdentifier:BrankViewCellIdentifier];
    
    
    [self.collectionView registerClass:[LB_GoodsRightCollectionHeadView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:HeaderIdentifier];
    
    
    
    
    
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return 4;
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 3;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView
           viewForSupplementaryElementOfKind:(NSString *)kind
                                 atIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionReusableView *headView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader
                                                                            withReuseIdentifier:HeaderIdentifier
                                                                                   forIndexPath:indexPath];
    
    return headView;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout
referenceSizeForHeaderInSection:(NSInteger)section {
    
    
    return CGSizeMake(KSCREENWIDTH-100, 45);
   
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
    
    self.clickItem();
    
}


@end
