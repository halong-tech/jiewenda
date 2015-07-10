//
//  LoginViewController.m
//  OCR
//
//  Created by 谭宗坚 on 15/6/25.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import "LoginViewController.h"
#import "HttpTool.h"

@implementation LoginViewController




- (IBAction)goRegisterVC:(id)sender {
    
    [self performSegueWithIdentifier:@"toRegister" sender:self];
}

- (IBAction)loginAction:(id)sender {
    
    NSString * idString = [NSString stringWithFormat:@"%d",1];
    
    [HttpTool loginTest:idString success:^(id response) {
        NSLog(@"%@",response);
    } failure:^(NSError * failure) {
       NSLog(@"%@",failure);
    }];
    
    
    [self performSegueWithIdentifier:@"goHomePage" sender:self];
}

- (IBAction)goRetrievePasswordVC:(id)sender {
    
    [self performSegueWithIdentifier:@"goRetrievePassword" sender:self];
}
@end
