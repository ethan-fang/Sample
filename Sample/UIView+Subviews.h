//
//  UIView+Subviews.h
//  Sample
//
//  Created by Ethan Fang on 10/1/15.
//  Copyright © 2015 sample. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Subviews)
- (UITextField *) subviewTextFieldWithTag:(int)tag;
- (UIButton *) subviewButtonWithTag:(int)tag;
@end
