//
//  PersonalCenter.m
//  OCR
//
//  Created by 谭宗坚 on 15/6/25.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import "PersonalCenterViewController.h"

@implementation PersonalCenterViewController


- (void)viewDidLoad{

    [super viewDidLoad];

}

- (IBAction)goSetting:(id)sender {
    
    [self performSegueWithIdentifier:@"goSetting" sender:self];
}
@end
