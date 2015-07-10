//
//  AttentionTeacherViewController.m
//  OCR
//
//  Created by 谭宗坚 on 15/6/29.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import "AttentionTeacherViewController.h"
#import "AttentionTeacherCell.h"
@implementation AttentionTeacherViewController

- (void)viewDidLoad{

    _tableView.delegate = self;
    _tableView.dataSource = self;
    [super viewDidLoad];

}



- (IBAction)backAction:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 20;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *CellIdentifier = @"AttentionTeacherCell";
    AttentionTeacherCell *cell = (AttentionTeacherCell *)[_tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"AttentionTeacherCell" owner:self options:nil];
        cell = [array objectAtIndex:0];
        [cell setSelectionStyle:UITableViewCellSelectionStyleGray];
    }

    return cell;
}



@end
