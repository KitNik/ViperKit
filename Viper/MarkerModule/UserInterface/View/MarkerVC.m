//
//  MarkerVC.m
//  Viper
//
//  Created by Nikita Vintonovich on 6/9/16.
//  Copyright © 2016 Nikita Vintonovich. All rights reserved.
//

#import "MarkerVC.h"
#import "MarkerView.h"

@interface MarkerVC ()

@property (nonatomic, strong) MarkerView *markerView;

@end

@implementation MarkerVC

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)loadView
{
    self.markerView = [[MarkerView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    [self.view addSubview:self.markerView];
}

@end
