//
//  LoginWireframe.h
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/13/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LoginWireframe : NSObject

- (void)presentLoginViewControllerFromNavigationController:(UINavigationController *)navController;
- (void)presentLoginViewControllerFromWindow:(UIWindow *)window;

@end
