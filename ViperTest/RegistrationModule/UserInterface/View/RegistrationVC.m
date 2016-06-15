//
//  RegistrationVC.m
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/14/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import "RegistrationVC.h"
#import "RegistrationView.h"
#import "UIViewController+Category.h"
#import "RegistrationDomainModel.h"

@interface RegistrationVC ()

@property (strong, nonatomic) IBOutlet RegistrationView *contentView;

@end

@implementation RegistrationVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self addDismissingKeyboardbyTouch];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self hideNavigationBar];
}

#pragma mark - Actions

- (IBAction)signUpButtonTapped:(UIButton *)sender
{
    if ([self.presenter respondsToSelector:@selector(signUpButtonTappedWithData:)]) {
        RegistrationDomainModel *registrationModel = [self registrationDomainModelFromRegistrationView:self.contentView];
        [self.presenter signUpButtonTappedWithData:registrationModel];
    }
    
}

- (IBAction)backToLogInButtonTapped:(UIButton *)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - RegistrationViewOutput Delegate

- (void)updateInterfaceWithSuccessSigningUp
{
    [self displayAlertWithMessage:@"You are success registered!\n😇"];
}

- (void)updateInterfaceWithFailureSigningUpAnderrorMessage:(NSString *)errorMessage
{
    [self displayAlertWithErrorMessage:errorMessage];
}

#pragma mark - Help Methods

- (RegistrationDomainModel *)registrationDomainModelFromRegistrationView:(RegistrationView *)registrationView
{
    RegistrationDomainModel *model = [[RegistrationDomainModel alloc] init];
    
    model.firstName         = registrationView.firstNameTextField.text;
    model.lastname          = registrationView.lastNameTextField.text;
    model.email             = registrationView.emailTextField.text;
    model.password          = registrationView.passwordTextField.text;
    model.confirmPassword   = registrationView.confirmPasswordTextField.text;
    
    return model;
}

@end
