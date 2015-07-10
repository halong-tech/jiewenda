//
//  CustomVoiceView.h
//  OCR
//
//  Created by 谭宗坚 on 15/7/1.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomVoiceView : UIView


@property (weak, nonatomic) IBOutlet UIButton *switchBtn;


- (instancetype)initWithSender:(UIView *)view voiceTime:(int)time;

//
- (IBAction)voiceSwitchAction:(id)sender;
//
@property (weak, nonatomic) IBOutlet UIImageView *voiceBackgroundImage;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@end
