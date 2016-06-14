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

@interface LoginPresenter : NSObject <LoginInput, LoginOutput>

@property (nonatomic, strong) id <LoginInput> interactor;
@property (nonatomic, strong) id <LoginOutput> viewContrtoller;

@end
