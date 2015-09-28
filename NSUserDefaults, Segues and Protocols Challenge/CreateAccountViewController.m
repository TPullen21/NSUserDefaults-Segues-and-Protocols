//
//  CreateAccountViewController.m
//  NSUserDefaults, Segues and Protocols Challenge
//
//  Created by Tom Pullen on 26/10/2014.
//  Copyright (c) 2014 Tom Pullen. All rights reserved.
//

#import "CreateAccountViewController.h"

@interface CreateAccountViewController ()

@end

@implementation CreateAccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)createAccountButtonPressed:(UIButton *)sender {
    if (self.usernameTextField.text.length != 0 && self.passwordTextField.text.length != 0 && [self.passwordTextField.text isEqualToString:self.confirmPasswordTextField.text]) {
        [[NSUserDefaults standardUserDefaults] setObject:self.usernameTextField.text forKey:USER_NAME];
        [[NSUserDefaults standardUserDefaults] setObject:self.passwordTextField.text forKey:USER_PASSWORD];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self.delagate didCreateAccount];
    }
    else {
        UIAlertView *myalert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Incorrect info given." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [myalert show];
    }
}

- (IBAction)cancelButtonPressed:(UIButton *)sender {
    [self.delagate didCancel];
}
@end
