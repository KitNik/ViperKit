//
//  RegistrationPresenter.m
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/14/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import "RegistrationPresenter.h"
#import "RegistrationDomainModel.h"

@implementation RegistrationPresenter

#pragma mark - RegistrationViewInput Delegate

- (void)signUpButtonTappedWithData:(RegistrationDomainModel *)registrationDomainModel
{
    if ([self.interractor respondsToSelector:@selector(signUpWithData:)]) {
        [self.interractor signUpWithData:registrationDomainModel];
    }
}

#pragma mark - RegistrationOutput Delegate

- (void)signUpSuccess
{
    if ([self.viewController respondsToSelector:@selector(updateInterfaceWithSuccessSigningUp)]) {
        [self.viewController updateInterfaceWithSuccessSigningUp];
    }
}

- (void)signUpFailureWithErrorMessage:(NSString *)errorMessage
{
    if ([self.viewController respondsToSelector:@selector(updateInterfaceWithFailureSigningUpAnderrorMessage:)]) {
        [self.viewController updateInterfaceWithFailureSigningUpAnderrorMessage:errorMessage];
    }
}

@end
