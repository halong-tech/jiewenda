//
//  SearchTopicViewController.m
//  OCR
//
//  Created by 谭宗坚 on 15/6/25.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import "SearchTopicViewController.h"
#import "TakePhotoViewController.h"
#import "CustomCameraView.h"
@implementation SearchTopicViewController


- (void)viewDidLoad{
    
  
    
    
    
    UITapGestureRecognizer * imageViewTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(goImagePick)];
    
    [_iconImageView setUserInteractionEnabled:YES];
    
    [_iconImageView addGestureRecognizer:imageViewTap];
    
}

- (BOOL)judgeHaveCamera{

    
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]){
    
        return YES;
        
    }else{
    
        return NO;
    }

}

- (void)goImagePick{
    
//      
//    if ([self judgeHaveCamera]) {
//        
//        _sheet = [[UIActionSheet alloc]initWithTitle:@"请选择" delegate:self cancelButtonTitle:nil destructiveButtonTitle:@"取消" otherButtonTitles:@"相机",@"相册", nil];
//        [_sheet showInView:self.view];
//    }else{
//    
//        _sheet = [[UIActionSheet alloc]initWithTitle:@"请选择" delegate:self cancelButtonTitle:nil destructiveButtonTitle:@"取消" otherButtonTitles:@"相册", nil];
//        [_sheet showInView:self.view];
//    
//    }
    
    
    //故事版跳转
//    UIStoryboard * searchTipicSB = [UIStoryboard storyboardWithName:@"SearchTopicStoryboard" bundle:nil];
//    TakePhotoViewController * HA = [searchTipicSB instantiateViewControllerWithIdentifier:@"searchTopicSB"];
//    [self.navigationController pushViewController:HA animated:YES];
//    
    _ipc = [[UIImagePickerController alloc]init];
    _ipc.sourceType = UIImagePickerControllerSourceTypeCamera;
    _ipc.delegate = self;
    _ipc.showsCameraControls = NO;
    _customCameraView = [[CustomCameraView alloc]initWithCameraView];
    
    
    NSArray * array = [_ipc.cameraOverlayView subviews];
    
    _ipc.cameraOverlayView = _customCameraView;
    
    [self presentViewController:_ipc animated:YES completion:nil];
    
    [_customCameraView.backActionBtn addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    
    [_customCameraView.takePhoneBtn addTarget:self action:@selector(takePhoto) forControlEvents:UIControlEventTouchUpInside];
    
    [_customCameraView.openPhotoBtn addTarget:self action:@selector(openPhoto) forControlEvents:UIControlEventTouchUpInside];
    
}


- (void)backAction{

    NSLog(@"退出");
    [self dismissViewControllerAnimated:YES completion:nil];

}

- (void)takePhoto{

    NSLog(@"拍照");
    [_ipc takePicture];

}

- (void)openPhoto{

    NSLog(@"打开相册");
    UIImagePickerController * photoIpc = [[UIImagePickerController alloc]init];
    photoIpc.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    
    [_ipc presentViewController:photoIpc animated:YES completion:nil];
}

#define UIImagePickViewDelegate
-(void)imagePickerController:(UIImagePickerController*)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    
    UIImage * portraitImg = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    
    NSLog(@"122");
    
    //将图片保存到沙盒目录下
    NSString * imagePath = [[NSHomeDirectory()stringByAppendingPathComponent:@"Documents"]stringByAppendingPathComponent:@"currentImage.png"];
    NSFileManager * fileManage = [NSFileManager defaultManager];
    if ([fileManage fileExistsAtPath:imagePath]) {
        [fileManage removeItemAtPath:imagePath error:nil];
        if ([UIImagePNGRepresentation(portraitImg)writeToFile:imagePath atomically:YES]) {
            NSLog(@"成功保存1");
        }
        
    }else{
        
        if ([UIImagePNGRepresentation(portraitImg)writeToFile:imagePath atomically:YES]) {
            NSLog(@"成功保存2");
        }
        
    }
    
    
    
    //    跳转到下一个故事版
    UIStoryboard * searchTipicSB = [UIStoryboard storyboardWithName:@"SearchTopicStoryboard" bundle:nil];
    TakePhotoViewController * searchingVC = [searchTipicSB instantiateViewControllerWithIdentifier:@"searchTopicSB"];
    [_ipc pushViewController:searchingVC animated:YES];
    
}

@end
