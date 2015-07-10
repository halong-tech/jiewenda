//
//  MyTopicViewController.m
//  OCR
//
//  Created by 谭宗坚 on 15/6/25.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import "MyTopicViewController.h"
#import "MyTopicCell.h"
@implementation MyTopicViewController


- (void)viewDidLoad{
    
    _myTopicTableView.delegate = self;
    _myTopicTableView.dataSource = self;

    [super viewDidLoad];

}

#define UITableViewDelegate
-(NSInteger) tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section{
    
    //ßNSLog(@"???%d",_musicTypeArray.count);
    return 20;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"MyTopicCell";
    MyTopicCell *cell = (MyTopicCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"MyTopicCell" owner:self options:nil];
        cell = [array objectAtIndex:0];
        [cell setSelectionStyle:UITableViewCellSelectionStyleGray];
    }
    

    return cell;
    
}




- (CGFloat)tableView:(UITableView *)atableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 66;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    switch (indexPath.row) {
        case 0:
            [self performSegueWithIdentifier:@"stayAnser" sender:self];
            break;
            
        case 1:
            [self performSegueWithIdentifier:@"alreadAnser" sender:self];
            break;
        case 2:
            [self performSegueWithIdentifier:@"goNoAnser" sender:self];
            break;
        case 3:
            [self performSegueWithIdentifier:@"toHaveAnser" sender:self];
            break;
            
        default:
            break;
    }
    
}


@end
