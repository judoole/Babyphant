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
	NSError *error;
    NSString *path = [[NSBundle mainBundle] pathForResource:@"bear_growl" ofType:@"mp3"];
    
    if (![[NSFileManager defaultManager] fileExistsAtPath:path]){
        NSLog(@"Filepath unknown : %@", path);
    }else{
        NSLog(@"Playing %@", path);
    }
    
    self.player = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:&error];
    
    if (!self.player)
	{
		NSLog(@"AVAudioPlayer could not be established: %@", error.localizedDescription);
	}
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.imageView.image = [UIImage imageNamed:self.imageUrl];
    //self.dataLabel.text = [self.dataObject description];
}

-(IBAction)handleTap:(UITapGestureRecognizer *)recognizer{
    if(self.player.playing){
        [self.player stop];
    }else{
        [self.player play];
    }
}

@end
