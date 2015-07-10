//
//  hahahaViewController.h
//  OCR
//
//  Created by 谭宗坚 on 15/7/2.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TakePhotoViewController : UIViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate>


@property(nonatomic, strong)UIImagePickerController * ipc;
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
- (IBAction)goHaveResultVC:(id)sender;
- (IBAction)goNoResultVC:(id)sender;

- (IBAction)backAction:(id)sender;
@end
