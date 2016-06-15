//
//  LoginPresenter.h
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/13/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginVC.h"
#import "LoginWireframe.h"
#import "LoginInteractor.h"
#import "LoginIO.h"
#import "LoginViewIO.h"
#import "LoginWireframeIO.h"

@interface LoginPresenter : NSObject <LoginOutput, LoginViewInput>

@property (nonatomic, weak) id <LoginInput> interactor;
@property (nonatomic, weak) id <LoginViewOutput> viewContrtoller;
@property (nonatomic, weak) id <LoginWireframeOutput> wireframe;

@end
