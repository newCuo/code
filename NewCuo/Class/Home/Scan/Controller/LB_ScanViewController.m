//
//  LB_ScanViewController.m
//  NewCuo
//
//  Created by 林波 on 2017/9/1.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_ScanViewController.h"
#import <AVFoundation/AVFoundation.h>


@interface LB_ScanViewController ()



@end

@implementation LB_ScanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /**
     CaptureSession 这是个捕获会话，也就是说你可以用这个对象从输入设备捕获数据流。
     AVCaptureVideoPreviewLayer 可以通过输出设备展示被捕获的数据流。
     首先，应该判断当前设备是否有捕获数据流的设备。
     */
    NSError *error;
    AVCaptureDevice *captureDevice = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    AVCaptureDeviceInput *input = [AVCaptureDeviceInput deviceInputWithDevice:captureDevice error:&error];
    
    if (!input) {
        NSLog(@"%@", [error localizedDescription]);
        [self.navigationController popViewControllerAnimated:YES];
    }else{
        self.scan = [[LB_ScanViewModel alloc]initWithViewController:self];
        WS(weakSelf);
        self.scan.scanReturn = ^(NSString *content){
            weakSelf.url = content;
        };
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
