
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface DataViewController : UIViewController <AVAudioPlayerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) NSString *mp3;
@property (strong, nonatomic) NSString *imageUrl;
@property (strong, nonatomic) AVAudioPlayer *player;

- (IBAction)handleTap:(UITapGestureRecognizer *)recognizer;


@end
