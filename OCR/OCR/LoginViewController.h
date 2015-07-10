//
//  LoginViewController.h
//  OCR
//
//  Created by 谭宗坚 on 15/6/25.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *userNameTF;

@property (weak, nonatomic) IBOutlet UITextField *passwordTF;

@property (weak, nonatomic) IBOutlet UIButton *loginBtn;


- (IBAction)goRegisterVC:(id)sender;


- (IBAction)loginAction:(id)sender;

- (IBAction)goRetrievePasswordVC:(id)sender;

@end
