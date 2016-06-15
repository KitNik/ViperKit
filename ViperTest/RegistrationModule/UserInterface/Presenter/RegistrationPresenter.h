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
#import "RegistrationWireframeIO.h"

@interface RegistrationPresenter : NSObject <RegistrationOutput, RegistrationViewInput>

@property (nonatomic, weak) id <RegistrationViewOutput> viewController;
@property (nonatomic, weak) id <RegistrationInput> interractor;
@property (nonatomic, weak) id <RegistrationWireframeOutput> wireframe;

@end
