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

@interface LoginVC () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet LoginView *contentView;

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setHidden:YES];
}

#pragma mark - Actions

- (IBAction)loginButtonTapped:(UIButton *)sender
{
    if ([self.presenter respondsToSelector:@selector(loginWithData:)]) {
        
        LoginModel *loginModel = [[LoginModel alloc] init];
        
        loginModel.email = self.contentView.emailTextField.text;
        loginModel.password = self.contentView.passwordTextField.text;
        
        [self.presenter loginWithData:loginModel];
    }
}

#pragma mark - Loginoutput delegate

- (void)loggedSuccess
{
    NSLog(@"You are successed logged in!");
}

@end
