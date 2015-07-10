//
//  SearchResultViewController.m
//  OCR
//
//  Created by 谭宗坚 on 15/7/7.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import "SearchResultViewController.h"
#import "SearchResultCellTableViewCell.h"
@interface SearchResultViewController ()

@end

@implementation SearchResultViewController

-(void)viewDidLoad{
    
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [super viewDidLoad];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 20;
    
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"SearchResultCellTableViewCell";
    SearchResultCellTableViewCell *cell = (SearchResultCellTableViewCell *)[_tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"SearchResultCellTableViewCell" owner:self options:nil];
        cell = [array objectAtIndex:0];
        [cell setSelectionStyle:UITableViewCellSelectionStyleGray];
    }
    
    //cell.favoritesImageView.image = [UIImage imageNamed:@"u5.png"];
    //cell.authorView.backgroundColor = [UIColor redColor];
    //cell.rightContentView.backgroundColor = [UIColor redColor];
    //[cell.infoLaber setText:@"31"];
    return cell;
    
    
    
}


- (CGFloat)tableView:(UITableView *)atableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"111");
    
    [self performSegueWithIdentifier:@"toAnseerDetail" sender:self];
    
    
}



- (IBAction)backAction:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}



@end
