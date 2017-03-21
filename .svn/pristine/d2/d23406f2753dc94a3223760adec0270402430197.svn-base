//
//  UserMyShopsVC.m
//  Virtual Mall
//
//  Created by Aditya Kumar on 17/03/17.
//  Copyright © 2017 mindfire. All rights reserved.
//
#import "SWRevealViewController.h"
#import "UserMyShopsVC.h"

@interface UserMyShopsVC ()

@end

@implementation UserMyShopsVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setSliderBarButtonProperty];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) setSliderBarButtonProperty
{
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.myShopsBackButton setTarget: self.revealViewController];
        [self.myShopsBackButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
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
