//
//  AppDelegate.h
//  Sample
//
//  Created by Ethan Fang on 9/25/15.
//  Copyright © 2015 sample. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserManager.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UserManager *userManager;

@end

