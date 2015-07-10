//
//  SearchResultViewController.h
//  OCR
//
//  Created by 谭宗坚 on 15/7/7.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchResultViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

- (IBAction)backAction:(id)sender;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end
