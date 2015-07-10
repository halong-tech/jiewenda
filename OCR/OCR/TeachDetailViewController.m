//
//  TeachDetailViewController.m
//  OCR
//
//  Created by 谭宗坚 on 15/6/28.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import "TeachDetailViewController.h"

@implementation TeachDetailViewController


- (void)updateViewConstraints{

    [super updateViewConstraints];
    
    _containerViewHeight.constant = CGRectGetHeight([[UIScreen mainScreen]bounds])/3;

}

- (IBAction)backAction:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
@end
