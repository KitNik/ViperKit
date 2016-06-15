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
@property (strong, nonatomic) RegistrationWireframe *registrationWireFrame;

@end

@implementation LoginVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self addDismissingKeyboardbyTouch];
    [self hideNavigationBar];
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
    self.registrationWireFrame = [[RegistrationWireframe alloc] init];
    [self.registrationWireFrame presentRegistrationViewControllerFromNavigationController:self.navigationController];
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
