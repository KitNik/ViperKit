//
//  LoginPresenter.m
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/13/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import "LoginPresenter.h"
#import "LoginModel.h"

@implementation LoginPresenter

#pragma mark - LoginViewInput Delegate

- (void)loginButtonTappedWithData:(LoginModel *)loginModel
{
    if ([self.interactor respondsToSelector:@selector(loginWithData:)]) {
        [self.interactor loginWithData:loginModel];
    }
}

#pragma mark - LoginOutput Delegate

- (void)loggedSuccess
{
    if ([self.viewContrtoller respondsToSelector:@selector(updateViewWithSuccessLogin)]) {
        [self.viewContrtoller updateViewWithSuccessLogin];
    }
}

- (void)loggedFailureWithErrorMessage:(NSString *)errorMessage
{
    if ([self.viewContrtoller respondsToSelector:@selector(updateViewWithErrorMessage:)]) {
        [self.viewContrtoller updateViewWithErrorMessage:errorMessage];
    }
}

@end
