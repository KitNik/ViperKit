//
//  LoginVC.h
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/13/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LoginIO.h"

@class LoginPresenter;

@interface LoginVC : UIViewController <LoginOutput>

@property (nonatomic, strong) id <LoginInput> presenter;

@end
