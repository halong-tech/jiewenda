//
//  MyTopicViewController.h
//  OCR
//
//  Created by 谭宗坚 on 15/6/25.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTopicViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *myTopicTableView;

@end
