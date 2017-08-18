//
//  LB_ShoppingContentView.m
//  NewCuo
//
//  Created by 林波 on 2017/8/16.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_ShoppingContentView.h"
#import "LB_ShoppingHeadTableViewCell.h"
#import "LB_ShoppingContentTableViewCell.h"
#import "LB_StroeModel.h"

@interface LB_ShoppingContentView()<UITableViewDelegate,UITableViewDataSource>
{
    UINib *markHead;
    UINib *markContent;
    
    
}

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *list;



@end
@implementation LB_ShoppingContentView

-(id)init
{
    
    self =  [[[NSBundle mainBundle]loadNibNamed:@"LB_ShoppingContentView" owner:self options:nil]objectAtIndex:0];
    self.contentHeight.constant = KSCREENHEIGHT-64-48;
    if (self) {
        [self initUI];
    }
    return self;
}

-(void)initUI{
    
  
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    LB_StroeModel * arr = self.list[section];
    return arr.goodsList.count;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.list.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        return 162;
    }else
    {
        return 104;
    }
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    LB_StroeModel *stroeModel = self.list[indexPath.section];
    
    if (indexPath.row==0) {
        static NSString * tt = @"LB_ShoppingHeadTableViewCell";
        if (!markHead) {
            markHead = [UINib nibWithNibName:@"LB_ShoppingHeadTableViewCell" bundle:nil];
            [tableView registerNib:markHead forCellReuseIdentifier:tt];
        }
        LB_ShoppingHeadTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tt];
        cell.stroeModel = stroeModel;
        cell.goodsModel = stroeModel.goodsList[indexPath.row];
        WS(weakSelf);
        cell.reloadTableView = ^{
            [weakSelf.tableView reloadData];
        };
        return cell;
        
    }else{
        
        static NSString * tt = @"LB_ShoppingContentTableViewCell";
        if (!markContent) {
            markContent = [UINib nibWithNibName:@"LB_ShoppingContentTableViewCell" bundle:nil];
            [tableView registerNib:markContent forCellReuseIdentifier:tt];
        }
        LB_ShoppingContentTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tt];
        cell.stroeModel = stroeModel;
        cell.goodsModel = stroeModel.goodsList[indexPath.row];
        WS(weakSelf);
        cell.reloadTableView = ^{
            [weakSelf.tableView reloadData];
        };
        return cell;
    }
}


@end
