//
//  DataViewController.m
//  Pictorama
//
//  Created by Ole C. Langfjæran on 3/25/13.
//  Copyright (c) 2013 Judoole. All rights reserved.
//

#import "DataViewController.h"

@interface DataViewController ()

@end

@implementation DataViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.dataLabel.text = [self.dataObject description];
}

-(IBAction)handleTap:(UITapGestureRecognizer *)recognizer{
    NSLog(@"We have a tap");
}

@end
