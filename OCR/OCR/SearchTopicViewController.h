//
//  SearchTopicViewController.h
//  OCR
//
//  Created by 谭宗坚 on 15/6/25.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomCameraView.h"
@interface SearchTopicViewController : UIViewController<UIActionSheetDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate>


@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;


@property (strong, nonatomic)UIActionSheet * sheet;
@property (strong, nonatomic)UIImagePickerController * ipc;
@property (strong, nonatomic)CustomCameraView * customCameraView;
@end
