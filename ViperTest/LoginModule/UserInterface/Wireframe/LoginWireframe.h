//
//  LoginWireframe.h
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/13/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "LoginWireframeIO.h"

@interface LoginWireframe : NSObject <LoginWireframeOutput>

- (void)presentLoginViewControllerFromNavigationController:(UINavigationController *)navController;
- (void)presentLoginViewControllerFromWindow:(UIWindow *)window;

@end
