//
//  RegistrationInteractor.h
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/14/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RegistrationIO.h"

@interface RegistrationInteractor : NSObject <RegistrationInput>

@property (nonatomic, strong) id <RegistrationOutput> presenter;

@end
