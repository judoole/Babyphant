//
//  DataViewController.h
//  Pictorama
//
//  Created by Ole C. Langfjæran on 3/25/13.
//  Copyright (c) 2013 Judoole. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface DataViewController : UIViewController <AVAudioPlayerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) NSString *mp3;
@property (strong, nonatomic) NSString *imageUrl;
@property (strong, nonatomic) AVAudioPlayer *player;

- (IBAction)handleTap:(UITapGestureRecognizer *)recognizer;


@end
