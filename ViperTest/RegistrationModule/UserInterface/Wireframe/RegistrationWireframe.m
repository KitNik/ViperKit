//
//  RegistrationWireframe.m
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/14/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import "RegistrationWireframe.h"
#import "UIStoryboard+Category.h"
#import "RegistrationVC.h"
#import "RegistrationPresenter.h"
#import "RegistrationInteractor.h"

@interface RegistrationWireframe ()

@property (nonatomic, strong) RegistrationVC *registrationVC;
@property (nonatomic, strong) RegistrationPresenter *presenter;
@property (nonatomic, strong) RegistrationInteractor *interactor;

@end

@implementation RegistrationWireframe

- (void)presentRegistrationViewControllerFromNavigationController:(UINavigationController *)navController
{
    UIStoryboard *storyboard = [UIStoryboard authorizationStoryboard];
    
    self.registrationVC = [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([RegistrationVC class])];
    self.presenter = [[RegistrationPresenter alloc] init];
    self.interactor = [[RegistrationInteractor alloc] init];
    
    self.registrationVC.presenter = self.presenter;
    self.interactor.presenter = self.presenter;
    
    self.presenter.viewController = self.registrationVC;
    self.presenter.interractor = self.interactor;
    self.presenter.wireframe = self;
    
    [navController pushViewController:self.registrationVC animated:YES];
}

#pragma mark - RegistrationWireframeOutput Delegate

- (void)backToLoginScreen
{
    UINavigationController *navViewcontroller = self.registrationVC.navigationController;
    [navViewcontroller popViewControllerAnimated:YES];
}

@end
