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
    
    int i = 99;
    BOOL even0 = [self isEven:i + 2];
    BOOL even1 = [self isEven:i + 11];
    

    
    NSLog(@"even0 %d even1 %d", even0, even1);
}

- (IBAction)pushButtonTapped:(id)sender {
    RandomViewController *randonVC = [[RandomViewController alloc] initWithNibName:NSStringFromClass([RandomViewController class]) bundle:nil];
    [self.navigationController pushViewController:randonVC animated:YES];
}

- (BOOL)isEven:(int)i {
    if (i % 2 == 0) {
        NSLog(@"%d is even", i);
        return YES;
    }
    NSLog(@"%d is odd", i);
    return NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
