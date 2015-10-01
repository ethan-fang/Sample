//
//  SampleTests.m
//  SampleTests
//
//  Created by Ethan Fang on 9/25/15.
//  Copyright © 2015 sample. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"
#import "AppDelegate.h"
#import "UserManager.h"
#import <OCMock/OCMock.h>
#import "UIView+Subviews.h"
#import "RandomViewController.h"


@interface ViewControllerTest : XCTestCase
@end

@implementation ViewControllerTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testLoginButtonTapped {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UINavigationController *navController = [storyboard instantiateViewControllerWithIdentifier:@"MainNavigationController"];
    ViewController *controller = navController.childViewControllers[0];
    
    UITextField *usernameField = [controller.view subviewTextFieldWithTag:1];
    usernameField.text = @"test";
    UITextField *passwordField = [controller.view subviewTextFieldWithTag:2];
    passwordField.text = @"test";
    
    
    id userManagerMock = OCMClassMock([UserManager class]);
    OCMExpect([userManagerMock loginWithUsername:@"test" password:@"test" complete:[OCMArg any]]).andDo(^(NSInvocation *invocation) {
        LoginCompleteBlock successBlock;
        [invocation getArgument:&successBlock atIndex:4];
        if (successBlock) {
            successBlock(true);
        }
    });;
    controller.userManager = userManagerMock;
    
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    appDelegate.window.rootViewController = navController;
    
    UIButton *loginButton = [controller.view subviewButtonWithTag:3];
    [loginButton sendActionsForControlEvents: UIControlEventTouchUpInside];
    
    OCMVerifyAll(userManagerMock);
}

- (void)testPushButtonTapped {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UINavigationController *navController = [storyboard instantiateViewControllerWithIdentifier:@"MainNavigationController"];
    ViewController *controller = navController.childViewControllers[0];
    
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    appDelegate.window.rootViewController = navController;
    
    UIButton *pushButton = [controller.view subviewButtonWithTag:4];
    [pushButton sendActionsForControlEvents: UIControlEventTouchUpInside];
    
    XCTAssert([controller.navigationController.topViewController isKindOfClass:[RandomViewController class]]);
}

@end
