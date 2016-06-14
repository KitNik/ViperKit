//
//  UIViewController+Category.h
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/14/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Category)

- (void)displayAlertWithErrorMessage:(NSString *)errorMessage;
- (void)addDismissingKeyboardbyTouch;

@end
