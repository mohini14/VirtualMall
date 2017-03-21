//
//  AlertDisplay.m
//  ZomatoDempApp
//
//  Created by Mohini on 05/03/17.
//  Copyright © 2017 Mohini. All rights reserved.
//

#import "AlertDisplay.h"

@implementation AlertDisplay

//method displays an alert with some message
+ (void)showAlertPopupWithTitle:(NSString *)message forView:(UIViewController *)view
{
	
	UIAlertController *alertController = [UIAlertController alertControllerWithTitle:kAppName message:message preferredStyle:UIAlertControllerStyleAlert];
	UIAlertAction* ok = [UIAlertAction actionWithTitle:kOkMessage style:UIAlertActionStyleDefault handler:nil];
	[alertController addAction:ok];
	[view presentViewController:alertController animated:YES completion:nil];
}

@end

