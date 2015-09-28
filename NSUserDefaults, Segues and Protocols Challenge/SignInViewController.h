//
//  SignInViewController.h
//  NSUserDefaults, Segues and Protocols Challenge
//
//  Created by Tom Pullen on 26/10/2014.
//  Copyright (c) 2014 Tom Pullen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CreateAccountViewController.h"
#import "ViewController.h"

@interface SignInViewController : UIViewController <CreateAccountViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;

- (IBAction)createAccountBarButtonItemPressed:(UIBarButtonItem *)sender;
- (IBAction)loginButtonPressed:(UIButton *)sender;

@end
