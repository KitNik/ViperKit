//
//  LoginVC.h
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/13/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginViewIO.h"

@class LoginPresenter;

@interface LoginVC : UIViewController <LoginViewOutput>

@property (nonatomic, weak) id <LoginViewInput> presenter;

@end
