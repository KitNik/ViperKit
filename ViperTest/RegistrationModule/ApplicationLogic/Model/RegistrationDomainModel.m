//
//  RegistrationDomainModel.m
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/14/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import "RegistrationDomainModel.h"
#import "RegistrationView.h"

@implementation RegistrationDomainModel

+ (instancetype)initWithDataFromRegistrationView:(RegistrationView *)registrationView
{
    RegistrationDomainModel *model = [[RegistrationDomainModel alloc] init];
    
    model.firstName         = registrationView.firstNameTextField.text;
    model.lastname          = registrationView.lastNameTextField.text;
    model.email             = registrationView.emailTextField.text;
    model.password          = registrationView.passwordTextField.text;
    model.confirmPassword   = registrationView.confirmPasswordTextField.text;
    
    return model;
}

@end
