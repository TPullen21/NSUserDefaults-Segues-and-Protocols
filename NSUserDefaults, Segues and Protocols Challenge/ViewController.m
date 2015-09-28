//
//  ViewController.m
//  NSUserDefaults, Segues and Protocols Challenge
//
//  Created by Tom Pullen on 26/10/2014.
//  Copyright (c) 2014 Tom Pullen. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.usernameLabel.text = [[NSUserDefaults standardUserDefaults] objectForKey:USER_NAME];
    self.passwordLabel.text = [[NSUserDefaults standardUserDefaults] objectForKey:USER_PASSWORD];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
