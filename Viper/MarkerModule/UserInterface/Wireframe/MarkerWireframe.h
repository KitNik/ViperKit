//
//  MarkerWireframe.h
//  Viper
//
//  Created by Nikita Vintonovich on 6/9/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MarkerWireframe : NSObject

- (void)presentMarkerViewControllerFromNavigationViewController:(UINavigationController *)navigationController;
- (void)presentMarkerViewControllerFromWindow:(UIWindow *)window;

@end
