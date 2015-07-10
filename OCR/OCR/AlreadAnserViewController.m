//
//  AlreadAnserViewController.m
//  OCR
//
//  Created by 谭宗坚 on 15/6/27.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import "AlreadAnserViewController.h"

@implementation AlreadAnserViewController

- (void)viewDidLoad{

    //_contentViewHeight.constant = [[UIScreen mainScreen]bounds].size.height*2;
  
    [super viewDidLoad];
}

- (IBAction)backAciton:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}






- (IBAction)toTeachDetailsVC:(id)sender {
    
    [self performSegueWithIdentifier:@"teachDetails" sender:self];
}
@end
