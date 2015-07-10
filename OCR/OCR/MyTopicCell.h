//
//  MyTopicCell.h
//  OCR
//
//  Created by 谭宗坚 on 15/6/26.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTopicCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *myTopicImageView;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateWithMinLabel;
@property (weak, nonatomic) IBOutlet UILabel *teachNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *anserStateLabel;


@end
