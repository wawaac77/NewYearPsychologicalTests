//
//  NYNavigationController.m
//  NewYearPsychologicalTests
//
//  Created by Alice Jin on 8/1/2018.
//  Copyright © 2018 Alice Jin. All rights reserved.
//

#import "NYNavigationController.h"

@interface NYNavigationController () <UIGestureRecognizerDelegate>

@end

@implementation NYNavigationController

/**
 only load once
 */
+ (void)load
{
    [self setUpBase];
}

#pragma mark - LifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - initial
+ (void)setUpBase
{
    UINavigationBar *bar = [UINavigationBar appearance];
    bar.barTintColor = [UIColor blackColor];
    [bar setShadowImage:[UIImage new]];
    [bar setTintColor:[UIColor clearColor]];
    
    NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
    //set navBar tint color
    attributes[NSForegroundColorAttributeName] = [UIColor blackColor];
    attributes[NSFontAttributeName] = [UIFont systemFontOfSize:18.0f];
    bar.titleTextAttributes = attributes;
    
}

#pragma mark - return
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.childViewControllers.count > 0) { //not rootVC
        UIBarButtonItem *negativeSpacer = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
        negativeSpacer.width = -15;
        
        UIButton *button = [[UIButton alloc] init]
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem backi]
    }
    
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
