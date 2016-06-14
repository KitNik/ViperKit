//
//  UIViewController+Category.m
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/14/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import "UIViewController+Category.h"

@implementation UIViewController (Category)

- (void)displayAlertWithErrorMessage:(NSString *)errorMessage
{
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@""
                                                                   message:errorMessage
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

- (void)hideNavigationBar
{
    [self.navigationController.navigationBar setHidden:YES];
}

- (void)addDismissingKeyboardbyTouch
{
    UITapGestureRecognizer *touch = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:touch];
}

- (void)dismissKeyboard
{
    [self.view endEditing:YES];
}

@end
