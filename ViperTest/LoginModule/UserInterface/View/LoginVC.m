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
#import "RegistrationWireframe.h"

@interface LoginVC () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet LoginView *contentView;

@end

@implementation LoginVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self addDismissingKeyboardbyTouch];
    [self hideNavigationBar];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    if ([self.presenter respondsToSelector:@selector(loginViewWillAppear)]) {
        [self.presenter loginViewWillAppear];
    }
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

- (IBAction)signUpButtonTapped:(UIButton *)sender
{
    if ([self.presenter respondsToSelector:@selector(signUpButtonTapped)]) {
        [self.presenter signUpButtonTapped];
    }
}

#pragma mark - LoginViewOutput Delegate

- (void)updateViewWithSuccessLogin
{
     [self displayAlertWithErrorMessage:@"You are success logged in!\n😇"];
}

- (void)updateViewWithErrorMessage:(NSString *)errorMessage
{
    [self displayAlertWithErrorMessage:errorMessage];
}

@end
