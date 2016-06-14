//
//  LoginVC.m
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/13/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import "LoginVC.h"
#import "LoginView.h"
#import "LoginPresenter.h"
#import "LoginModel.h"
#import "UIViewController+Category.h"

@interface LoginVC () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet LoginView *contentView;

@end

@implementation LoginVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self addDismissingKeyboardbyTouch];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setHidden:YES];
}

#pragma mark - Actions

- (IBAction)loginButtonTapped:(UIButton *)sender
{
    if ([self.presenter respondsToSelector:@selector(loginButtonTappedWithData:)]) {
        
        LoginModel *loginModel = [[LoginModel alloc] init];
        
        loginModel.email = self.contentView.emailTextField.text;
        loginModel.password = self.contentView.passwordTextField.text;
        
        [self.presenter loginButtonTappedWithData:loginModel];
    }
}

#pragma mark - LoginViewOutput Delegate

- (void)updateViewWithSuccessLogin
{
     NSLog(@"You are successed logged in!");
}

- (void)updateViewWithErrorMessage:(NSString *)errorMessage
{
    [self displayAlertWithErrorMessage:errorMessage];
}

@end
