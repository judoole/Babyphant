#import "DataViewController.h"

@interface DataViewController ()

@end

@implementation DataViewController


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.imageView.image = [UIImage imageNamed:self.imageUrl];
    
    NSError *error;
    NSString *path = [[NSBundle mainBundle] pathForResource:self.mp3 ofType:@"mp3"];

    self.player = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:&error];

    if (!self.player){
        NSLog(@"AVAudioPlayer could not be established: %@", error.description);
    }else{
        [self.player prepareToPlay];
    }
}

-(IBAction)handleTap:(UITapGestureRecognizer *)recognizer{
    if(self.player.playing){
        [self.player stop];
    }else{
        [self.player play];
    }
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.player stop];
}

@end
