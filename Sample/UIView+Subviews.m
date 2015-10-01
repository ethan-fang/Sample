//
//  UIView+Subviews.m
//  Sample
//
//  Created by Ethan Fang on 10/1/15.
//  Copyright © 2015 sample. All rights reserved.
//

#import "UIView+Subviews.h"

@implementation UIView (Subviews)

- (UITextField *) subviewTextFieldWithTag:(int)tag {
    for (UIView *i in self.subviews){
        if([i isKindOfClass:[UITextField class]]){
            UITextField *newTextField = (UITextField *)i;
            if(newTextField.tag == tag){
                return newTextField;
            }
        }
    }
    return nil;
}


- (UIButton *) subviewButtonWithTag:(int)tag {
    for (UIView *i in self.subviews){
        if([i isKindOfClass:[UIButton class]]){
            UIButton *newButton = (UIButton *)i;
            if(newButton.tag == tag){
                return newButton;
            }
        }
    }
    return nil;
}

@end
