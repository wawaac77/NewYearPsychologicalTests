//
//  NYTabBarController.m
//  NewYearPsychologicalTests
//
//  Created by Alice Jin on 8/1/2018.
//  Copyright © 2018 Alice Jin. All rights reserved.
//

#import "NYTabBarController.h"

#import "NYTabBar.h"

@interface NYTabBarController () <UITabBarControllerDelegate>

@end

@implementation NYTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.delegate = self;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - replace system tabBar
- (void)setUpTabBar
{
    NYTabBar *tabBar = [[NYTabBar alloc] init];
    tabBar.backgroundColor = [UIColor whiteColor];
    //KVC replace system to self
    [self setValue:tabBar forKey:@"tabBar"];
    
}

#pragma mark - setUpTabBarButton
- (void)setUpTabBarButton
{
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
