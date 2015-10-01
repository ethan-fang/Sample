//
//  Arrays.m
//  Sample
//
//  Created by Ethan Fang on 9/25/15.
//  Copyright © 2015 sample. All rights reserved.
//

#import "Arrays.h"

@implementation Arrays

- (void)arrays {
    BOOL isSame = [[NSArray alloc] isKindOfClass:[NSMutableArray class]];
    BOOL isSame1 = [[NSMutableArray alloc] isKindOfClass:[NSArray class]];
    
    NSArray *a = @[ @"foo", @"bar", @"baz" ];
    id objects[] = { @"foo", @"bar", @"baz" };
    NSArray *b = [[NSArray alloc] initWithObjects:objects count:3];
    //    NSLog(@"%lu", class_getInstanceSize([a class]);
    
    char *bytesArrayLen4 = (char *)(__bridge void *)@[ @1, @2, @3, @4 ];
    NSLog(@"%x", *(uint64_t *)(bytesArrayLen4 + 8));
    
    char *bytesArrayLen7 = (char *)(__bridge void *)@[ @1, @2, @3, @4, @5, @6, @7 ];
    NSLog(@"%x", *(uint64_t *)(bytesArrayLen7 + 8));
}

@end
