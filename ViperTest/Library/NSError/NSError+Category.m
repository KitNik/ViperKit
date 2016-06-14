//
//  NSError+Category.m
//  ViperTest
//
//  Created by Nikita Vintonovich on 6/14/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import "NSError+Category.h"

@implementation NSError (Category)

+ (instancetype)generate
{
    return [NSError errorWithDomain:@"ViperTest"
                               code:500
                           userInfo:@{NSLocalizedDescriptionKey : @"Something was wrong...\n🤔"}];
}

@end
