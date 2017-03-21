//
//  HomePageViewController.m
//  Virtual Mall
//
//  Created by Aditya Kumar on 10/03/17.
//  Copyright © 2017 mindfire. All rights reserved.
//
#import "SWRevealViewController.h"
#import "Shop.h"
#import "ShopTableViewCell.h"
#import "HomePageViewController.h"

@interface HomePageViewController () <UITableViewDelegate, UITableViewDataSource>

@end

@implementation HomePageViewController

- (void) viewDidLoad
{
    [super viewDidLoad];
    [self setSliderBarButtonProperty];
    [self setButtonsAppearance];
}

- (void) didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

//This method will connect menu button to third party (SWRevealVC) library
- (void) setSliderBarButtonProperty
{
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        [self.sliderBarButton setTarget: self.revealViewController];
        [self.sliderBarButton setAction: @selector( revealToggle: )];
        [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
}

//This method method set UI of search button
- (void) setButtonsAppearance
{
    self.searchButton.layer.cornerRadius = self.searchButton.bounds.size.height * 0.5;
    self.searchButton.backgroundColor = [UIColor colorWithRed:0.816 green:0.294 blue:0.298 alpha:1.0];
}

#pragma  mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* sCellIdentifiers = @"shopTableCell";
    ShopTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:sCellIdentifiers];
    if(cell == nil)
    {
        NSArray* tableCell = [[NSBundle mainBundle]loadNibNamed:@"ShopTableViewCell" owner:nil options:nil];
        cell = [tableCell objectAtIndex:0];
    }
    [tableView setRowHeight:cell.frame.size.height];
    NSDictionary* aShopDict = [NSDictionary dictionaryWithObjectsAndKeys:@"Assotech One",@"shopName",@"Noida Sector 62",@"shopAddress",@"2",@"shopRating",@"DummyShopImage.jpg",@"shopImageName", nil];
    Shop* aShop = [[Shop alloc] initShopWithDictionary:aShopDict];
    [cell setValueInToTableCell:aShop];
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self performSegueWithIdentifier:@"HomeToShopDetails" sender:nil];
}

#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"HomeToShopDetails"])
    {
        
    }
}


@end
