//
//  UserHomePageMenuVC.m
//  Virtual Mall
//
//  Created by Aditya Kumar on 16/03/17.
//  Copyright © 2017 mindfire. All rights reserved.
//

#import "UserHomePageMenuVC.h"

@interface UserHomePageMenuVC () <UITableViewDelegate, UITableViewDataSource>
{
    NSArray* userMenuItemList;
}
@end

@implementation UserHomePageMenuVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setUserImageAppearance];
    userMenuItemList = @[@"MyAccount",@"MyShops",@"Orders",@"Logout"];
    self.userMenuTableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
    
}
 
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void) setUserImageAppearance
{
    self.userImageView.layer.cornerRadius = self.userImageView.layer.bounds.size.height * 0.5;
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return userMenuItemList.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* cellIdentifiers = [userMenuItemList objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifiers forIndexPath:indexPath];
    return cell;
}

@end
