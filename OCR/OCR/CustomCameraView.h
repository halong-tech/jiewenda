//
//  CustomCameraView.h
//  OCR
//
//  Created by 谭宗坚 on 15/7/7.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCameraView : UIView

@property (weak, nonatomic) IBOutlet UIButton *backActionBtn;
@property (weak, nonatomic) IBOutlet UIButton *takePhoneBtn;
@property (weak, nonatomic) IBOutlet UIButton *openPhotoBtn;
- (instancetype)initWithCameraView;
@end
