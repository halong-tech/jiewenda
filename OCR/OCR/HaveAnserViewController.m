//
//  HaveAnser.m
//  OCR
//
//  Created by 谭宗坚 on 15/7/1.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import "HaveAnserViewController.h"

@interface HaveAnserViewController ()

@end

@implementation HaveAnserViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)backAction:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}
@end
