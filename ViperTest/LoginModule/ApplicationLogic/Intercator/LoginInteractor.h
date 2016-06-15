//
//  LoginInteractor.h
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/13/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginIO.h"

@interface LoginInteractor : NSObject <LoginInput>

@property (nonatomic, weak) id <LoginOutput> presenter;

@end
