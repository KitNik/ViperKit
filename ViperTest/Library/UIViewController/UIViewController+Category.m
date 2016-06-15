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
    [self displayAlertWithOkButtonAndTitle:@"ERROR" andMessage:errorMessage];
}

- (void)displayAlertWithMessage:(NSString *)message
{
    [self displayAlertWithOkButtonAndTitle:@"VIPER" andMessage:message];
}

- (void)displayAlertWithOkButtonAndTitle:(NSString *)title andMessage:(NSString *)messgae
{
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:title
                                                                   message:messgae
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

- (void)displayNavigationBar
{
    [self.navigationController.navigationBar setHidden:NO];
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
