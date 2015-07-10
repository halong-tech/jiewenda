//
//  RetrievePasswordViewController.h
//  OCR
//
//  Created by 谭宗坚 on 15/6/26.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RetrievePasswordViewController : UIViewController


- (IBAction)backLoginVC:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *userNameTF;

@property (weak, nonatomic) IBOutlet UITextField *codeTF;

- (IBAction)getCodeAction:(id)sender;

- (IBAction)resetPasswordAction:(id)sender;


@end
