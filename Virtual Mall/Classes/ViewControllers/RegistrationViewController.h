//
//  RegistrationViewController.h
//  Virtual Mall
//
//  Created by Mohini Sindhu  on 14/03/17.
//  Copyright © 2017 mindfire. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Validator.h"
#import "Utility.h"
#import "Define.h"
#import "NSString+StringOperations.h"
#import "UITextField+VirtualMall.h"

@interface RegistrationViewController : UITableViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *firstName;
@property (weak, nonatomic) IBOutlet UITextField *lastName;
@property (weak, nonatomic) IBOutlet UITextField *email;
@property (weak, nonatomic) IBOutlet UITextField *contact;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UIButton *sellerCheckBox;
@property (weak, nonatomic) IBOutlet UITextField *confirmPassword;

- (IBAction) dismissKeyboard;
- (IBAction)signUpButtonPressed:(id)sender;
- (IBAction)sellerCheckBoxPressed:(id)sender;
- (IBAction)haveAccountButtonPressed:(UIButton *)sender;

@end
