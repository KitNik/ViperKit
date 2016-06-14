//
//  RegistrationInteractor.m
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/14/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import "RegistrationInteractor.h"
#import "RegistrationDomainModel.h"

@implementation RegistrationInteractor

- (void)signUpWithData:(RegistrationDomainModel *)registrationDomainModel
{
    BOOL isDataValied = self isLoginDataValid:<#(RegistrationDomainModel *)#>
    
    if (self is) {
        <#statements#>
    }
}

- (BOOL)isSigningDataValid:(RegistrationDomainModel *)registrationDomainModel
{
    // some validation logic
    
    BOOL isValid = YES;
    
    NSArray *array = @[registrationDomainModel.firstName,
                       registrationDomainModel.lastname,
                       registrationDomainModel.email,
                       registrationDomainModel.password,
                       registrationDomainModel.confirmPassword,];
    
    for (NSString *string in array) {
        if (!string.length) {
            isValid = NO;
            break;
        }
    }
    
    return isValid;
}

- (BOOL)isPasswordValidInModel:(RegistrationDomainModel *)registrationDomainModel
{
    return [registrationDomainModel.password isEqualToString:registrationDomainModel.confirmPassword];
}

@end
