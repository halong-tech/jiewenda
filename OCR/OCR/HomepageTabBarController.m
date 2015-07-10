//
//  HomepageTabBarController.m
//  OCR
//
//  Created by 谭宗坚 on 15/6/25.
//  Copyright (c) 2015年 谭宗坚. All rights reserved.
//

#import "HomepageTabBarController.h"

#define EACH_W(A) ([UIScreen mainScreen].bounds.size.width/A)
#define EACH_H (self.tabBar.bounds.size.height)
#define BTNTAG 10000
#import "SearchTopicViewController.h"
#import "MyTopicViewController.h"
#import "MyFavoritesController.h"
#import "PersonalCenterViewController.h"

@interface HomepageTabBarController ()

@end

@implementation HomepageTabBarController{

    UIButton * _button;

}


- (instancetype)init{
    self = [super init];
    if (self) {
        
    }
    return self;
}

-(void)viewDidLoad{
  
    
    self.tabBar.hidden = YES;
    [self initController];
    [self createTabbar:self.viewControllers.count];
    //[self initController];
    
}

#pragma mark - 如果想添加控制器到tabbar里面在这里面实例化就行


- (void)initController{

    SearchTopicViewController * sTVC = [[SearchTopicViewController alloc]init];
   
    [self addChildViewController:sTVC title:@"view1"];
    MyTopicViewController * myTopicVC = [[MyTopicViewController alloc]init];
    [self addChildViewController:myTopicVC title:@"view2"];
    MyFavoritesController * myFavorVC = [[MyFavoritesController alloc]init];
    [self addChildViewController:myFavorVC title:@"view3"];
    PersonalCenterViewController * perCenVC = [[PersonalCenterViewController alloc]init];
    [self addChildViewController:perCenVC title:@"view4"];
    

}

#pragma mark - 添加子控制器

-(void)addChildViewController:(UIViewController *)childController title:(NSString *)title{

    UINavigationController * nav = [[UINavigationController alloc]initWithRootViewController:childController];
    childController.navigationItem.title = title;
    
    //添加导航栏背景颜色
    [nav.navigationBar setBackgroundImage:[UIImage imageNamed:@"sy2@2x"] forBarMetrics:UIBarMetricsDefault];
    


}


//
- (void)createTabbar:(NSInteger)ControllersNum{

    NSArray * normImage = @[@"fx9@2x",@"gd9@2x",@"fx11@2x",@"fx12@2x"];
    //  只需修改选中图片的名字
    NSArray * selectImage = @[@"sy11@2x",@"fx10@2x",@"wd13@2x",@"gd11@2x"];
    UIImageView *tabbar = [[UIImageView alloc]initWithFrame:self.tabBar.frame];

    tabbar.backgroundColor =  [UIColor whiteColor];
    tabbar.userInteractionEnabled = YES;
    for(int i = 0;i<self.viewControllers.count;i++)
    {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(EACH_W(self.viewControllers.count)*i, 0, EACH_W(self.viewControllers.count), EACH_H);
        [btn setImage:[UIImage imageNamed:normImage[i]] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:selectImage[i]] forState:UIControlStateSelected];
        btn.tag = BTNTAG+i;
        [tabbar addSubview:btn];
        if(btn.tag==BTNTAG)
        {
            [self btnSelect:btn];
        }
        [btn addTarget:self action:@selector(btnSelect:) forControlEvents:UIControlEventTouchUpInside];
    }
    [self.view addSubview:tabbar];

}


- (void)btnSelect:(UIButton *)sender
{
    NSLog(@"被点了");
    _button.selected =NO ;
    sender.selected = YES;
    _button = sender;
    self.selectedIndex = sender.tag-BTNTAG;
}


@end
