//
//  RegistrationWireframe.h
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/14/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "RegistrationWireframeIO.h"

@interface RegistrationWireframe : NSObject <RegistrationWireframeOutput>

- (void)presentRegistrationViewControllerFromNavigationController:(UINavigationController *)navController;

@end
