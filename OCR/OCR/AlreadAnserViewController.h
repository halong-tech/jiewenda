//
//  AlreadAnserViewController.h
//  OCR
//
//  Created by 谭宗坚 on 15/6/27.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlreadAnserViewController : UIViewController
- (IBAction)backAciton:(id)sender;


//contentView 的高度， 用来实现scrollview 的高度
@property (weak, nonatomic)IBOutlet NSLayoutConstraint * contentViewHeight;
@property (weak, nonatomic)IBOutlet NSLayoutConstraint * contentViewWidth;


@property (weak, nonatomic)IBOutlet NSLayoutConstraint * downViewLeadingToTop;


@property (weak, nonatomic) IBOutlet UIView *downView;


@property (weak, nonatomic) IBOutlet UIView *upView;


@property (weak, nonatomic)UIView * lineTop;
@property (weak, nonatomic)UIView * lineButtom;
@property (weak, nonatomic)UIImageView * anserImageView;
@property (weak, nonatomic)UIView * videoView;
@property (weak, nonatomic)UIView * stateView;
@property (weak, nonatomic)UILabel * stateLabel;
@property (weak, nonatomic)UILabel * anserStateLabel;
@property (weak, nonatomic)UIButton * complaintBtn;

- (IBAction)toTeachDetailsVC:(id)sender;















@end
