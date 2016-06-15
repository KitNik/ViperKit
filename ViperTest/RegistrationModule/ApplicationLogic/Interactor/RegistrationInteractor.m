//
//  RegistrationInteractor.m
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/14/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import "RegistrationInteractor.h"
#import "RegistrationDomainModel.h"
#import "NSError+Category.h"

@implementation RegistrationInteractor

#pragma mark - RegistrationInput Delegate

- (void)signUpWithData:(RegistrationDomainModel *)registrationDomainModel
{
    BOOL isDataValied = [self isSigningDataValid:registrationDomainModel];
    BOOL isPasswordСonfirmed = [self isPasswordconfirmedInModel:registrationDomainModel];
    
    if (isDataValied && isPasswordСonfirmed) {
        if ([self.presenter respondsToSelector:@selector(signUpSuccess)]) {
            [self.presenter signUpSuccess];
        }
    } else {
        if ([self.presenter respondsToSelector:@selector(signUpFailureWithErrorMessage:)]) {
            NSError *error = [NSError generate];
            [self.presenter signUpFailureWithErrorMessage:error.localizedDescription];
        }
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

- (BOOL)isPasswordconfirmedInModel:(RegistrationDomainModel *)registrationDomainModel
{
    // some validation logic
    return [registrationDomainModel.password isEqualToString:registrationDomainModel.confirmPassword];
}

@end
