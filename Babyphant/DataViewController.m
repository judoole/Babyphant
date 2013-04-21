#import "DataViewController.h"

@interface DataViewController ()

@end

@implementation DataViewController


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSError *error;
    
    //The Image
    NSString *imagePath = [[NSBundle mainBundle] pathForResource:self.imageUrl ofType:nil inDirectory:@"babyphant-resources/images"];
    self.imageView.image = [UIImage imageWithContentsOfFile:imagePath];
    
    //The sound
    NSString *path = [[NSBundle mainBundle] pathForResource:self.mp3 ofType:@"mp3" inDirectory:@"babyphant-resources/sounds"];
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
