//
//  LoginPageViewController.m
//  Virtual Mall
//
//  Created by Aditya Kumar on 09/03/17.
//  Copyright © 2017 mindfire. All rights reserved.
//
#import "Utility.h"
#import "LoginPageViewController.h"

@interface LoginPageViewController () <UITextFieldDelegate>
{
    UITextField* currentTextField;
}
@end

@implementation LoginPageViewController

- (void) viewDidLoad
{
    [super viewDidLoad];
    [self setTapGestureRecognizer];
}

- (void) didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

// This method is for keyboard hide when user press anywhere on screen
- (void) setTapGestureRecognizer
{
    UITapGestureRecognizer* tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self
                                                                                action:@selector(dismissKeyboard)];
    [self.view addGestureRecognizer:tapGesture];
}

// This method is for hide keyboard
- (void) dismissKeyboard
{
    [currentTextField resignFirstResponder];
}

//This method is is excecuted when user preess login button
- (IBAction) loginButtonAction:(id)sender
{
    if([self authenticateUserCredential])
        [self performSegueWithIdentifier:@"LoginUser" sender:nil];
    else if(![self.emailInputTextField.text isEqualToString:@"a@g.com"] && ![self.passwordInputTextField.text isEqualToString:@"abc"])
        [Utility promptErrorMessage:@"Invalid Email and Password" sender:self];
    else if(![self.emailInputTextField.text isEqualToString:@"a@g.com"])
        [Utility promptErrorMessage:@"Invalid Email" sender:self];
    else if(![self.passwordInputTextField.text isEqualToString:@"a@g.com"])
        [Utility promptErrorMessage:@"Invalid Password" sender:self];
    self.emailInputTextField.text = @"";
    self.passwordInputTextField.text = @"";
}

//This method checks user credential 
- (BOOL) authenticateUserCredential
{
    if([self.emailInputTextField.text isEqualToString:@"a@g.com"] && [self.passwordInputTextField.text isEqualToString:@"abc"])
        return YES;
    else
        return NO;
}

#pragma mark - UITextFieldDelegate

- (void) textFieldDidEndEditing:(UITextField *)textField
{
    if(textField.tag == 1)
    {
       if(![Utility validateEmail:textField.text])
           [Utility promptErrorMessage:@"Enter valid Email" sender:self];
    }
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    currentTextField = textField;
}
    
- (BOOL) textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

#pragma mark - Navigation

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
}
@end
