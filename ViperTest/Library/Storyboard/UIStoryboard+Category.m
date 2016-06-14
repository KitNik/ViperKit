//
//  UIStoryboard+Category.m
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/14/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import "UIStoryboard+Category.h"

@implementation UIStoryboard (Category)

+ (instancetype)authorizationStoryboard
{
    return [UIStoryboard storyboardWithName:@"Authorization" bundle:nil];
}

@end
