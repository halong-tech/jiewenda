//
//  NoAnserViewController.m
//  OCR
//
//  Created by 谭宗坚 on 15/6/28.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import "NoAnserViewController.h"

@implementation NoAnserViewController

- (IBAction)goUpSuccess:(id)sender {
    
    [self performSegueWithIdentifier:@"havePoints" sender:self];
}

- (IBAction)goUpFailure:(id)sender {
    [self performSegueWithIdentifier:@"noPoints" sender:self];
}

- (IBAction)backAction:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
@end
