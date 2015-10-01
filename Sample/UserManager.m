//
//  UserManager.m
//  Sample
//
//  Created by Ethan Fang on 10/1/15.
//  Copyright © 2015 sample. All rights reserved.
//

#import "UserManager.h"



@interface UserManager()

@property (nonatomic, strong) NSMutableDictionary *usernameMap;

@end

@implementation UserManager : NSObject

- (instancetype)init {
    self = [super init];
    if (self) {
        _usernameMap = [NSMutableDictionary new];
        _usernameMap[@"ethan"] = @"password";
    }
    return self;
}

- (void)loginWithUsername:(NSString *)username password:(NSString *)password complete:(LoginCompleteBlock)complete {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSString *savedPassword = [self.usernameMap objectForKey:username];
        BOOL success = [savedPassword isEqualToString:password];
        if (complete) {
            dispatch_async(dispatch_get_main_queue(), ^{
                complete(success);
            });
        }
    });
    
    
}

@end
