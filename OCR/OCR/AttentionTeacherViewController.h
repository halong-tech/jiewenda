//
//  AttentionTeacherViewController.h
//  OCR
//
//  Created by 谭宗坚 on 15/6/29.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AttentionTeacherViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>



- (IBAction)backAction:(id)sender;

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end
