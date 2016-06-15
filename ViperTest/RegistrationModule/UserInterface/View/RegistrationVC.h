//
//  RegistrationVC.h
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/14/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RegistrationViewIO.h"

@interface RegistrationVC : UIViewController <RegistrationViewOutput>

@property (nonatomic, weak) id <RegistrationViewInput> presenter;

@end
