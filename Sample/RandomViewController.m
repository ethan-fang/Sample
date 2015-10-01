//
//  RandomViewController.m
//  Sample
//
//  Created by Ethan Fang on 9/25/15.
//  Copyright © 2015 sample. All rights reserved.
//

#import "RandomViewController.h"

@interface RandomViewController ()

@property (nonatomic, assign) int i;

@end

@implementation RandomViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.i = 1;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    self.i = 2;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    self.i = 3;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
