//
//  hahahaViewController.m
//  OCR
//
//  Created by 谭宗坚 on 15/7/2.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import "TakePhotoViewController.h"

@interface TakePhotoViewController ()

@end

@implementation TakePhotoViewController

- (void)viewDidLoad {
    
    
//    [WCAlertView showAlertWithTitle:@"提示" message:@"图片正在解析" customizationBlock:^(WCAlertView *alertView) {
//        
//    } completionBlock:^(NSUInteger buttonIndex, WCAlertView *alertView) {
//        
//    } cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
//    [super viewDidLoad];
    
    
    
    NSString * imagePath = [[NSHomeDirectory()stringByAppendingPathComponent:@"Documents"]stringByAppendingPathComponent:@"currentImage.png"];
    
    UIImage * image = [UIImage imageWithContentsOfFile:imagePath];
    [_photoImageView setImage:image];
    

    
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

- (IBAction)goHaveResultVC:(id)sender{
    
    NSLog(@"有解雇");
    [self performSegueWithIdentifier:@"toHaveResult" sender:self];
    

}
- (IBAction)goNoResultVC:(id)sender {
    
    [self performSegueWithIdentifier:@"goNoResultVC" sender:self];
}

- (IBAction)backAction:(id)sender {
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}
@end
