//
//  UserManager.h
//  Sample
//
//  Created by Ethan Fang on 10/1/15.
//  Copyright © 2015 sample. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void(^LoginCompleteBlock)(BOOL success);

@interface UserManager : NSObject
- (void)loginWithUsername:(NSString *)username password:(NSString *)password complete:(LoginCompleteBlock)complete;
@end
