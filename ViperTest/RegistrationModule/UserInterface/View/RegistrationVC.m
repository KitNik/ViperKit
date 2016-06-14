//
//  RegistrationVC.m
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/14/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import "RegistrationVC.h"
#import "RegistrationView.h"
#import "UIViewController+Category.h"
#import "RegistrationDomainModel.h"

@interface RegistrationVC ()

@property (strong, nonatomic) IBOutlet RegistrationView *contentView;

@end

@implementation RegistrationVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self addDismissingKeyboardbyTouch];
    [self hideNavigationBar];
}

#pragma mark - Actions

- (IBAction)signUpButtonTapped:(UIButton *)sender
{
    RegistrationDomainModel *registrationModel = [RegistrationDomainModel initWithDataFromRegistrationView:self.contentView];
    
    
}

@end
