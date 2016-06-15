//
//  RegistrationPresenter.h
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/14/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RegistrationIO.h"
#import "RegistrationViewIO.h"

@interface RegistrationPresenter : NSObject <RegistrationOutput, RegistrationViewInput>

@property (nonatomic, strong) id <RegistrationViewOutput> viewController;
@property (nonatomic, strong) id <RegistrationInput> interractor;

@end
