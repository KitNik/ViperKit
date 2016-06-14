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

@implementation RegistrationWireframe

- (void)presentLoginViewControllerFromNavigationController:(UINavigationController *)navController
{
    UIStoryboard *storyboard = [UIStoryboard authorizationStoryboard];
    
    RegistrationVC *registrationVC = [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass([RegistrationVC class])];
    RegistrationPresenter *presenter = [[RegistrationPresenter alloc] init];
    RegistrationInteractor *interactor = [[RegistrationInteractor alloc] init];
    
    
}

@end
