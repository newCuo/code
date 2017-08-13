//
//  LB_SetViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/7/25.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_SetViewModel.h"
#import "LB_SetContentView.h"
#import "LB_AddressViewController.h"

@interface LB_SetViewModel()<UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@property(strong,nonatomic)LB_SetContentView *contentView;



@end

@implementation LB_SetViewModel

-(void)initUI{
    
    
    self.contentView = [[LB_SetContentView alloc]initWithFrame:CGRectMake(0, 64, KSCREENWIDTH, KSCREENHEIGHT-64-50)];
    [self.viewController.view addSubview:self.contentView];
    
    
    
    
}

-(void)bindingEvent
{
    
    WS(weakSelf);
    
    self.contentView.clickItem = ^(USERTYPE type){
        
        
        switch (type) {
            case USERHEADIMAGE:
                [weakSelf tap];
                break;
            case USERADDRESS:{
                LB_AddressViewController *address = [[LB_AddressViewController alloc]init];
                [weakSelf.viewController.navigationController pushViewController:address animated:YES];
            }
               
                break;
                
            default:
                break;
        }
    };
}

-(void)tap{
    
    
     WS(weakSelf);
    UIAlertController *al = [UIAlertController alertControllerWithTitle:@"请选择拍照类型" message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *alertAction = [UIAlertAction actionWithTitle:@"拍照" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [weakSelf tapPhoto:YES];
    }];
    [al addAction:alertAction];
    UIAlertAction *alertAction1 = [UIAlertAction actionWithTitle:@"相册选择" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
         [weakSelf tapPhoto:NO];
    }];
    [al addAction:alertAction1];
    UIAlertAction *cancle = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    [al addAction:cancle];
    [weakSelf.viewController presentViewController:al animated:YES completion:nil];
 
    
}


-(void)tapPhoto:(BOOL)isLibrary{
    
    UIImagePickerController *picker = [[UIImagePickerController alloc]init];
    
    picker.delegate = self;
    picker.sourceType = isLibrary?UIImagePickerControllerSourceTypeCamera:UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    [self.viewController presentViewController:picker animated:YES completion:^{
        
    }];
}
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
    
    UIImage *image = info[@"UIImagePickerControllerOriginalImage"];
    self.contentView.headImageView.image = image;
    [picker dismissViewControllerAnimated:YES completion:nil];
    
}


@end
