//
//  LoginWireframe.m
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/13/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import "LoginWireframe.h"
#import "LoginVC.h"
#import "LoginPresenter.h"
#import "LoginInteractor.h"
#import "UIStoryboard+Category.h"

@implementation LoginWireframe

- (void)presentLoginViewControllerFromNavigationController:(UINavigationController *)navController
{
    UIStoryboard *storyboard = [UIStoryboard authorizationStoryboard];
    
    LoginVC *loginVC = [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([LoginVC class])];
    LoginPresenter *presenter = [[LoginPresenter alloc] init];
    LoginInteractor *interactor = [[LoginInteractor alloc] init];
    
    presenter.viewContrtoller = loginVC;
    presenter.interactor = interactor;
    
    loginVC.presenter = presenter;
    interactor.presenter = presenter;
    
    [navController pushViewController:loginVC animated:YES];
}

- (void)presentLoginViewControllerFromWindow:(UIWindow *)window
{
    UINavigationController *navController = [[UINavigationController alloc] init];
    
    window.rootViewController = navController;
    [window makeKeyAndVisible];
    
    [self presentLoginViewControllerFromNavigationController:navController];
}

@end
