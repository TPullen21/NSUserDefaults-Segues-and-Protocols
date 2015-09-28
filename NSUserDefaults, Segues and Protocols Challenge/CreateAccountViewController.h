//
//  CreateAccountViewController.h
//  NSUserDefaults, Segues and Protocols Challenge
//
//  Created by Tom Pullen on 26/10/2014.
//  Copyright (c) 2014 Tom Pullen. All rights reserved.
//

#import <UIKit/UIKit.h>

#define USER_NAME @"username"
#define USER_PASSWORD @"password"

@protocol CreateAccountViewControllerDelegate <NSObject>

- (void)didCancel;
- (void)didCreateAccount;

@end

@interface CreateAccountViewController : UIViewController

@property (weak, nonatomic) id <CreateAccountViewControllerDelegate> delagate;
@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) IBOutlet UITextField *confirmPasswordTextField;

- (IBAction)createAccountButtonPressed:(UIButton *)sender;
- (IBAction)cancelButtonPressed:(UIButton *)sender;

@end
