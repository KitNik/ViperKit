//
//  LoginInteractor.m
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/13/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import "LoginInteractor.h"
#import "LoginModel.h"
#import "NSError+Category.h"

@implementation LoginInteractor

- (void)loginWithData:(LoginModel *)loginModel
{
    if ([self isLoginDataValid:loginModel]) {
        if ([self.presenter respondsToSelector:@selector(loggedSuccess)]) {
            [self.presenter loggedSuccess];
        }
    } else {
        
        NSError *error = [NSError generate];
        if ([self.presenter respondsToSelector:@selector(loggedFailureWithErrorMessage:)]) {
            [self.presenter loggedFailureWithErrorMessage:error.localizedDescription];
        }
    }
}

- (BOOL)isLoginDataValid:(LoginModel *)loginModel
{
    // some validation logic
    return loginModel.email.length && loginModel.password.length;
}

@end
