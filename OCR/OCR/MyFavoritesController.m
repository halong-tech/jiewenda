//
//  MyFavoritesController.m
//  OCR
//
//  Created by 谭宗坚 on 15/6/25.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import "MyFavoritesController.h"
#import "MyFavoritesCell.h"
@implementation MyFavoritesController


-(void)viewDidLoad{
    
    
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
    static NSString *CellIdentifier = @"MyFavoritesCell";
    MyFavoritesCell *cell = (MyFavoritesCell *)[_myFavoritesTableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell == nil) {
            NSArray *array = [[NSBundle mainBundle] loadNibNamed:@"MyFavoritesCell" owner:self options:nil];
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
    
    [self performSegueWithIdentifier:@"favouritesToHaveAnser" sender:self];
    
  
}



@end
