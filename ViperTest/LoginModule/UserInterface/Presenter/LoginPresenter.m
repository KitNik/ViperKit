//
//  LoginPresenter.m
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/13/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import "LoginPresenter.h"
#import "LoginModel.h"

@implementation LoginPresenter

- (void)loginWithData:(LoginModel *)loginModel
{
    if ([self.interactor respondsToSelector:@selector(loginWithData:)]) {
        [self.interactor loginWithData:loginModel];
    }
}

- (void)loggedSuccess
{
    if ([self.viewContrtoller respondsToSelector:@selector(loggedSuccess)]) {
        [self.viewContrtoller loggedSuccess];
    }
}

@end
