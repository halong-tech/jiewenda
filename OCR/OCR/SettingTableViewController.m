//
//  SettingTableViewController.m
//  OCR
//
//  Created by 谭宗坚 on 15/6/29.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import "SettingTableViewController.h"

@implementation SettingTableViewController

- (void)viewDidLoad{
    
    
    [super viewDidLoad];
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    switch (indexPath.row) {
        case 0:
            [self performSegueWithIdentifier:@"toFunctionIntroduction" sender:self];
            break;
        case 1:
            [self performSegueWithIdentifier:@"toMessageSetting"
                sender:self];
            break;
        case 2:
            [self performSegueWithIdentifier:@"toCopyrightNotice"
                                      sender:self];
            break;
        case 3:
            [self performSegueWithIdentifier:@"goVersionUpdate" sender:self];
            break;
            
        default:
            break;
    }
    
}

@end
