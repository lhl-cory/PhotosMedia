//
//  RootViewController.m
//  Media
//
//  Created by Cory Alder on 2016-01-29.
//  Copyright © 2016 Cory Alder. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

-(void)viewDidAppear:(BOOL)animated {
    
    UIPageViewController *pageController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStylePageCurl navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    
    
    pageController.delegate = self;
    pageController.dataSource = self;
    
    
    UIViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MediaController"];
    
//    UIViewController *viewController = [[UIViewController alloc] init];
    
//    viewController.view.backgroundColor = [UIColor orangeColor];
    
    [pageController setViewControllers:@[viewController] direction:(UIPageViewControllerNavigationDirectionForward) animated:NO completion:nil];
    
    [self presentViewController:pageController animated:NO completion:nil];
}


-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    
    
    UIViewController *newvc = [self.storyboard instantiateViewControllerWithIdentifier:@"MediaController"];
    
    return newvc;
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    
    
    UIViewController *newvc = [self.storyboard instantiateViewControllerWithIdentifier:@"MediaController"];
    
    
//    int index = [self.pages indexOfObject:viewController.city ]
//    newvc.city = self.pages[index-1]
    
    
    return newvc;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
