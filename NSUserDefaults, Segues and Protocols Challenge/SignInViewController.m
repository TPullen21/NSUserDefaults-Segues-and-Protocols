//
//  SignInViewController.m
//  NSUserDefaults, Segues and Protocols Challenge
//
//  Created by Tom Pullen on 26/10/2014.
//  Copyright (c) 2014 Tom Pullen. All rights reserved.
//

#import "SignInViewController.h"

@interface SignInViewController ()

@end

@implementation SignInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([sender isKindOfClass:[UIBarButtonItem class]]) {
        if ([segue.destinationViewController isKindOfClass:[CreateAccountViewController class]]) {
            CreateAccountViewController *createAccountVC = segue.destinationViewController;
            createAccountVC.delagate = self;
        }
    }
    
    if ([sender isKindOfClass:[UIButton class]]) {
        if ([segue isKindOfClass:[ViewController class]]) {
            ViewController *createAccountVC = segue.destinationViewController;
        }
    }
}

- (IBAction)createAccountBarButtonItemPressed:(UIBarButtonItem *)sender {
    [self performSegueWithIdentifier:@"toCreateAccountViewControllerSegue" sender:sender];
}

- (IBAction)loginButtonPressed:(UIButton *)sender {
    if ([self.usernameTextField.text isEqualToString:[[NSUserDefaults standardUserDefaults] objectForKey:USER_NAME]] && [self.passwordTextField.text isEqualToString:[[NSUserDefaults standardUserDefaults] objectForKey:USER_PASSWORD]]) {
        [self performSegueWithIdentifier:@"toViewControllerSegue" sender:sender];
    }
    else {
        UIAlertView *myAlert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Incorrect credentials entered" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [myAlert show];
    }
}

- (void)didCancel {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didCreateAccount {
    [self dismissViewControllerAnimated:YES completion:nil];    
}

@end
