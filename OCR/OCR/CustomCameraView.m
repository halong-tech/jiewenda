//
//  CustomCameraView.m
//  OCR
//
//  Created by 谭宗坚 on 15/7/7.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import "CustomCameraView.h"

@implementation CustomCameraView

- (instancetype)init{

    self = [super init];
    if (self) {
        
    }
    
    return self;

}

- (instancetype)initWithCameraView{

    NSArray * array = [[NSBundle mainBundle]loadNibNamed:@"CustomCameraView" owner:self options:nil];
    self = [array lastObject];
    
    float widith = [[UIScreen mainScreen]bounds].size.width;
    float height = [[UIScreen mainScreen]bounds].size.height;
    self.frame = CGRectMake(0, 0, widith, height);
    self.backgroundColor = [UIColor clearColor];
    
    return self;


}
@end
