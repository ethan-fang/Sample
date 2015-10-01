//
//  ViewController.m
//  Sample
//
//  Created by Ethan Fang on 9/25/15.
//  Copyright © 2015 sample. All rights reserved.
//

#import "ViewController.h"
#import "RandomViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)pushButtonTapped:(id)sender {
    RandomViewController *randonVC = [[RandomViewController alloc] initWithNibName:NSStringFromClass([RandomViewController class]) bundle:nil];
    [self.navigationController pushViewController:randonVC animated:YES];
}

@end
