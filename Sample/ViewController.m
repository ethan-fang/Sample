//
//  ViewController.m
//  Sample
//
//  Created by Ethan Fang on 9/25/15.
//  Copyright © 2015 sample. All rights reserved.
//

#import "ViewController.h"
#import "RandomViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITextField *usernameTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)pushButtonTapped:(id)sender {
    RandomViewController *randonVC = [[RandomViewController alloc] initWithNibName:NSStringFromClass([RandomViewController class]) bundle:nil];
    [self.navigationController pushViewController:randonVC animated:YES];
}


- (IBAction)loginButtonTapped:(id)sender {
    NSString *username = self.usernameTextField.text;
    NSString *password = self.passwordTextField.text;
    
    [self.userManager loginWithUsername:username password:password complete:^(BOOL success) {
        [self handleLoginSuccess:success];
    }];
}

- (void)handleLoginSuccess:(BOOL)success {
    NSLog(@"Login %@", [NSNumber numberWithBool:success]);
    
}

- (UserManager *)userManager {
    if (!_userManager) {
        AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
        _userManager = appDelegate.userManager;
    }
    return _userManager;
}



@end
