//
//  LoginIO.h
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/13/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LoginModel;

@protocol LoginInput <NSObject>

- (void)loginWithData:(LoginModel *)loginModel;

@end

@protocol LoginOutput <NSObject>

- (void)loggedSuccess;
- (void)loggedFailureWithErrorMessage:(NSString *)errorMessage;

@end