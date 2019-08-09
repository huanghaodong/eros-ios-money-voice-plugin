
#import "Sound.h"
#import <UIKit/UIKit.h>
@interface Sound ()

@end

@implementation Sound

-(instancetype)init{
    if (self = [super init]) {
        [[UIApplication sharedApplication] beginReceivingRemoteControlEvents];
        /*
         Adding the above line of code made it so my audio would start even if the app was in the background.
         */
        
        NSURL* url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"zf" ofType:@"mp3"]];
        _audioSession = [AVAudioSession sharedInstance];
        [_audioSession setCategory:AVAudioSessionCategoryPlayback withOptions:AVAudioSessionCategoryOptionMixWithOthers error:nil];
        [_audioSession setActive:YES error:nil];
        
        if(!staticAudioPlayer){
            staticAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
            [staticAudioPlayer prepareToPlay];
            staticAudioPlayer.volume = 1;
        }
    }
    return self;
}

+(instancetype)sharedInstance{
    static Sound *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

-(void)play{
    staticAudioPlayer.volume = 10;
    if (!staticAudioPlayer.isPlaying) {
        [staticAudioPlayer play];
    }
}

-(void)stop{
    staticAudioPlayer.currentTime = 0;
    [staticAudioPlayer stop];
}

@end
