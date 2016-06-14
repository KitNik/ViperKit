//
//  RegistrationIO.h
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/14/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RegistrationDomainModel;

@protocol RegistrationInput <NSObject>

- (void)signUpWithData:(RegistrationDomainModel *)registrationDomainModel;

@end

@protocol RegistrationOutput <NSObject>

- (void)signUpSuccess;
- (void)signUpFailureWithErrorMessage:(NSString *)errorMessage;

@end
