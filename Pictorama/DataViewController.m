//
//  DataViewController.m
//  Pictorama
//
//  Created by Ole C. Langfjæran on 3/25/13.
//  Copyright (c) 2013 Judoole. All rights reserved.
//

#import "DataViewController.h"
#import <AVFoundation/AVFoundation.h>

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
    NSError *error;
    NSString *path = [[NSBundle mainBundle] pathForResource:@"bear_growl_y" ofType:@"wav"];
    
    if (![[NSFileManager defaultManager] fileExistsAtPath:path]){
        NSLog(@"Filepath ukjent : %@", path);
    }else{
        NSLog(@"Playing %@", path);
    }
    
    AVAudioPlayer *player = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:&error];
    
    if (!player)
	{
		NSLog(@"AVAudioPlayer could not be established: %@", error.localizedFailureReason);
	}
    
    [player play];
}

@end
