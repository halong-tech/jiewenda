//
//  HaveAnserTableTableViewController.h
//  OCR
//
//  Created by 谭宗坚 on 15/7/1.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomVoiceView.h"
@interface HaveAnserTableTableViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UIView *voiceView;
@property (nonatomic, retain)CustomVoiceView * customVoiceView;
@end
