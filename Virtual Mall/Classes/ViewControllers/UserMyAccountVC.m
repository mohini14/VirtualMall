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
}

//This method will connect slider menu button to third party (SWRevealVC) library
- (void) setSliderBarButtonProperty
{
        SWRevealViewController *revealViewController = self.revealViewController;
        if ( revealViewController )
        {
            [self.myAccountSlideButton setTarget: self.revealViewController];
            [self.myAccountSlideButton setAction: @selector( revealToggle: )];
            [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
        }
}
- (IBAction)backToHomeButtonAction:(id)sender
{
    [self performSegueWithIdentifier:@"MyAccToMain" sender:nil];
}
@end
