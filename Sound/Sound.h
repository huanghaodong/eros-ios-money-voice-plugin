
#import <AVFoundation/AVFoundation.h>

static AVAudioPlayer* staticAudioPlayer;

@interface Sound : NSObject
{
    AVAudioSession* _audioSession;
}

+(instancetype)sharedInstance;

-(void)play;

-(void)stop;

@end

