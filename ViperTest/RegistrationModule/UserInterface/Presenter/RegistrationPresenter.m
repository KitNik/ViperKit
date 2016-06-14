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
        self.interractor 
    }
}

#pragma mark - RegistrationOutput Delegate

- (void)signUpSuccess
{
    
}

- (void)signUpFailureWithErrorMessage:(NSString *)errorMessage
{
    
}

@end
