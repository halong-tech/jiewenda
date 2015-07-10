//
//  CustomVoiceView.m
//  OCR
//
//  Created by 谭宗坚 on 15/7/1.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#define View_Height 30
#define View_Width 270
#import "CustomVoiceView.h"

@implementation CustomVoiceView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)init{

    self = [super init];
    if (self) {

    }
    
    return self;
}


- (instancetype)initWithSender:(UIView *)view voiceTime:(int)time{

    self = [super initWithFrame:CGRectMake(0, 0, View_Width, View_Height)];
    self.backgroundColor = [UIColor clearColor];
    NSArray *nibContents = [[NSBundle mainBundle]loadNibNamed:@"CustomVoiceView" owner:self options:nil];
    self = [nibContents lastObject];
    
    return self;
}

- (IBAction)voiceSwitchAction:(id)sender {
    
    NSLog(@"1111");
}




@end
