//
//  LB_ShoppingContentTableViewCell.m
//  NewCuo
//
//  Created by 林波 on 2017/8/16.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_ShoppingContentTableViewCell.h"
@interface LB_ShoppingContentTableViewCell()
@property (weak, nonatomic) IBOutlet UIButton *goodsSelectBtn;

@end

@implementation LB_ShoppingContentTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    
}

-(void)setIsOpen:(BOOL)isOpen
{
    _isOpen = isOpen;
}


-(void)setGoodsModel:(LB_GoodsModel *)goodsModel
{
    _goodsModel = goodsModel;
    self.goodsSelectBtn.selected = goodsModel.isSelect;
    
    
    
    
    
}
- (IBAction)goodsSelectAction:(UIButton *)sender {
    
    sender.selected = !sender.selected;
    self.goodsModel.isSelect = sender.selected;
    [self.stroeModel checkSelectAll];
    self.reloadTableView();
    
}

-(void)setStroeModel:(LB_StroeModel *)stroeModel
{
    _stroeModel = stroeModel;
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
