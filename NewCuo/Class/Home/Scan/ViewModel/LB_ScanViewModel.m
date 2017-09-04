//
//  LB_ScanViewModel.m
//  NewCuo
//
//  Created by 林波 on 2017/9/1.
//  Copyright © 2017年 林波. All rights reserved.
//

#import "LB_ScanViewModel.h"
#import <AVFoundation/AVFoundation.h>
#import "LB_ScanView.h"



@interface LB_ScanViewModel()<AVCaptureMetadataOutputObjectsDelegate>

@property (strong, nonatomic) AVCaptureSession *captureSession;
@property (strong, nonatomic) AVCaptureVideoPreviewLayer *videoPreviewLayer;
@property (strong, nonatomic) AVCaptureMetadataOutput *captureMetadataOutput;
@property (strong, nonatomic) UIView *viewPreview;//扫描窗口
@property (strong, nonatomic) LB_ScanView *scanView;




@end
@implementation LB_ScanViewModel

-(void)initUI{
    
    NSError *error;
      AVCaptureDevice *captureDevice = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    AVCaptureDeviceInput *input = [AVCaptureDeviceInput deviceInputWithDevice:captureDevice error:&error];
    //设置会话的输入设备
    if (!_captureSession) {
        _captureSession = [[AVCaptureSession alloc] init];
    }
    [_captureSession addInput:input];
    
    //对应输出
    if (!_captureMetadataOutput) {
        _captureMetadataOutput = [[AVCaptureMetadataOutput alloc] init];
    }
    [_captureSession addOutput:_captureMetadataOutput];
    
    //创建一个队列
    dispatch_queue_t dispatchQueue;
    dispatchQueue = dispatch_queue_create("myQueue",NULL);
    [_captureMetadataOutput setMetadataObjectsDelegate:self queue:dispatchQueue];
    [_captureMetadataOutput setMetadataObjectTypes:[NSArray arrayWithObject:AVMetadataObjectTypeQRCode]];//设置条码类型。更多类型底下补上
    [_captureMetadataOutput setRectOfInterest:CGRectMake((1-200/KSCREENWIDTH)/2, (1-200/KSCREENHEIGHT)/2, 200/KSCREENWIDTH, 200/KSCREENHEIGHT)];
    
    //降捕获的数据流展现出来
    _videoPreviewLayer = [[AVCaptureVideoPreviewLayer alloc] initWithSession:_captureSession];
    [_videoPreviewLayer setVideoGravity:AVLayerVideoGravityResizeAspectFill];
    
    if (!_viewPreview) {
        _viewPreview = [[UIView alloc]initWithFrame:CGRectMake(0,0, KSCREENWIDTH, KSCREENHEIGHT)];
        [self.LB_View addSubview:_viewPreview];
    }
    [_videoPreviewLayer setFrame:_viewPreview.layer.bounds];
    [_viewPreview.layer addSublayer:_videoPreviewLayer];
    
    CAShapeLayer *pShapeLayer = [CAShapeLayer layer];
    pShapeLayer.fillColor = K_COLOR_RGBA(0, 0, 0, 0.3).CGColor;
    [self.viewPreview.layer addSublayer:pShapeLayer];
    UIBezierPath *pPath = [UIBezierPath bezierPathWithRect:CGRectMake((KSCREENWIDTH-150)/2, (KSCREENHEIGHT-150)/2, 150, 150)];
    
    
    pShapeLayer.path = pPath.CGPath;
    
    UIBezierPath *pOtherPath = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, self.viewPreview.frame.size.width, self.viewPreview.frame.size.height)];
    pShapeLayer.path = pOtherPath.CGPath;
    
    [pOtherPath appendPath:pPath];
    pShapeLayer.path = pOtherPath.CGPath;
    //重点
    pShapeLayer.fillRule = kCAFillRuleEvenOdd;
    
    
  
    
    
    //开始捕获
    [_captureSession startRunning];


    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"navigation_back"] forState:UIControlStateNormal];
    [self.LB_View addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(self.LB_View.mas_top).offset(20);
        make.left.equalTo(self.LB_View.mas_left).offset(0);
        make.size.mas_equalTo(CGSizeMake(40, 40));
        
        
    }];
    [[btn rac_signalForControlEvents:UIControlEventTouchDown] subscribeNext:^(id x) {
         [self.viewController.navigationController dismissViewControllerAnimated:YES completion:nil];
    }];
    
    
    self.scanView = [[LB_ScanView alloc]init];
    [self.scanView setFrame:_viewPreview.layer.bounds];
    [_viewPreview addSubview:self.scanView];

    

}

//获得的数据在 AVCaptureMetadataOutputObjectsDelegate 唯一定义的方法中
- (void)captureOutput:(AVCaptureOutput *)captureOutput didOutputMetadataObjects:(NSArray *)metadataObjects fromConnection:(AVCaptureConnection *)connection{
    //判断是否有数据，是否是二维码数据
    if (metadataObjects != nil && [metadataObjects count] > 0) {
        AVMetadataMachineReadableCodeObject *metadataObj = [metadataObjects objectAtIndex:0];
        if ([[metadataObj type] isEqualToString:AVMetadataObjectTypeQRCode]) {
            //获得扫描的数据，并结束扫描
            [self performSelectorOnMainThread:@selector(stopReading:)withObject:metadataObj.stringValue waitUntilDone:NO];
            //线程更新label的text值
            self.scanReturn(metadataObj.stringValue);
           
          
        }
    }
}

- (void)stopReading:(id)sender{
    [_captureSession stopRunning];
    _captureSession = nil;
    [_videoPreviewLayer removeFromSuperlayer];
     [self.viewController.navigationController dismissViewControllerAnimated:YES completion:nil];
}




@end
