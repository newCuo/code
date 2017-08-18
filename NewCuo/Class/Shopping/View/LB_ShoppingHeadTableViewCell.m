//
//  LB_ShoppingHeadTableViewCell.m
//  NewCuo
//
//  Created by 林波 on 2017/8/16.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_ShoppingHeadTableViewCell.h"

@interface LB_ShoppingHeadTableViewCell()

@property (weak, nonatomic) IBOutlet UIButton *selectAllBtn;
@property (weak, nonatomic) IBOutlet UILabel *storeNameLab;
@property (weak, nonatomic) IBOutlet UILabel *freightLab;
@property (weak, nonatomic) IBOutlet UIButton *goodsSelectBtn;



@end


@implementation LB_ShoppingHeadTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
  

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
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

-(void)setStroeModel:(LB_StroeModel *)stroeModel
{
    _stroeModel = stroeModel;
    self.selectAllBtn.selected = _stroeModel.isSelectAll;
    
}

- (IBAction)selectGoodsAction:(UIButton *)sender {
    
    sender.selected = !sender.selected;
    self.goodsModel.isSelect = sender.selected;
    [self.stroeModel checkSelectAll];
    self.reloadTableView();
    
}

- (IBAction)selectAllAction:(UIButton *)sender {
    
    sender.selected = !sender.selected;
    _stroeModel.isSelectAll = sender.selected;
    [self.stroeModel selectAll:sender.selected];
    self.reloadTableView();
    
}

@end
