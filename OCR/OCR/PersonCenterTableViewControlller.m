//
//  PersonCenterTableView.m
//  OCR
//
//  Created by 谭宗坚 on 15/6/29.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import "PersonCenterTableViewControlller.h"

@implementation PersonCenterTableViewControlller


- (void)viewDidLoad{

   
    
    [super viewDidLoad];

}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    switch (indexPath.row) {
        case 0:
        
            [self performSegueWithIdentifier:@"toEditData" sender:self];
            break;
            
        case 1:
            [self performSegueWithIdentifier:@"toResetPassWord" sender:self];
            break;
         case 2:
            [self performSegueWithIdentifier:@"toEditSchool" sender:self];
            break;
            
         case 3:
            [self performSegueWithIdentifier:@"toEditGrade" sender:self];
            break;
            
         case 4:
            [self performSegueWithIdentifier:@"toAttentionTeacher" sender:self];
        default:
            break;
    }
    
    

}



@end
