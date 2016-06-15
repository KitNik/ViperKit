//
//  LoginViewIO.h
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/14/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LoginModel;

@protocol LoginViewInput <NSObject>

- (void)loginButtonTappedWithData:(LoginModel *)loginModel;
- (void)signUpButtonTapped;
- (void)loginViewWillAppear;

@end

@protocol LoginViewOutput <NSObject>

- (void)updateViewWithSuccessLogin;
- (void)updateViewWithErrorMessage:(NSString *)errorMessage;

@end