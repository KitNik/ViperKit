//
//  RegistrationViewIO.h
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/14/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RegistrationDomainModel;

@protocol RegistrationViewInput <NSObject>

- (void)signUpButtonTappedWithData:(RegistrationDomainModel *)registrationDomainModel;
- (void)backToLoginButtonTapped;

@end

@protocol RegistrationViewOutput <NSObject>

- (void)updateInterfaceWithSuccessSigningUp;
- (void)updateInterfaceWithFailureSigningUpAnderrorMessage:(NSString *)errorMessage;

@end
