//
//  LoginWireframeIO.h
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/15/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LoginWireframeOutput <NSObject>

- (void)displayRegistrationScreen;
- (void)loginScreenWillAppear;

@end
