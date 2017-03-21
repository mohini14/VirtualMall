//
//  UserMyAccountVC.m
//  Virtual Mall
//
//  Created by Aditya Kumar on 16/03/17.
//  Copyright © 2017 mindfire. All rights reserved.
//
#import "SWRevealViewController.h"
#import "UserMyAccountVC.h"

@interface UserMyAccountVC ()

@end

@implementation UserMyAccountVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setSliderBarButtonProperty];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) setSliderBarButtonProperty
{
        SWRevealViewController *revealViewController = self.revealViewController;
        if ( revealViewController )
        {
            [self.backButton setTarget: self.revealViewController];
            [self.backButton setAction: @selector( revealToggle: )];
            [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
        }
}
- (IBAction)backToHomeButtonAction:(id)sender
{
    [self performSegueWithIdentifier:@"MyAccToMain" sender:nil];
}
@end
