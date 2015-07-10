//
//  MyFavoritesCell.h
//  OCR
//
//  Created by 谭宗坚 on 15/6/27.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyFavoritesCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *favoritesImageView;

@property (weak, nonatomic) IBOutlet UIView *authorView;

@property (weak, nonatomic) IBOutlet UIView *rightContentView;

@property (weak, nonatomic) IBOutlet UILabel *anserNameLabel;

@property (weak, nonatomic) IBOutlet UILabel *anserState;

@property (weak, nonatomic) IBOutlet UILabel *anserDate;

@property (weak, nonatomic) IBOutlet UILabel *anserTime;

@end
