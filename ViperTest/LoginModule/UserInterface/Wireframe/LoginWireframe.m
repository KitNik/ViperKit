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

@interface LoginWireframe ()

@property (nonatomic, strong) LoginVC *loginVC;
@property (nonatomic, strong) LoginPresenter *presenter;
@property (nonatomic, strong) LoginInteractor *interactor;

@end

@implementation LoginWireframe

- (void)presentLoginViewControllerFromNavigationController:(UINavigationController *)navController
{
    UIStoryboard *storyboard = [UIStoryboard authorizationStoryboard];
    
    self.loginVC = [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([LoginVC class])];
    self.presenter = [[LoginPresenter alloc] init];
    self.interactor = [[LoginInteractor alloc] init];
    
    self.presenter.viewContrtoller = self.loginVC;
    self.presenter.interactor = self.interactor;
    
    self.loginVC.presenter = self.presenter;
    self.interactor.presenter = self.presenter;
    
    [navController pushViewController:self.loginVC animated:YES];
}

- (void)presentLoginViewControllerFromWindow:(UIWindow *)window
{
    UINavigationController *navController = [[UINavigationController alloc] init];
    
    window.rootViewController = navController;
    [window makeKeyAndVisible];
    
    [self presentLoginViewControllerFromNavigationController:navController];
}

@end
