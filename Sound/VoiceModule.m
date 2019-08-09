

#import "VoiceModule.h"
#import <UIKit/UIKit.h>

#import "Sound.h"
#import "ViewController.h"
#import "WXComponentManager.h"
#import "WXConvert.h"
#import <WeexPluginLoader/WeexPluginLoader.h>

@interface VoiceModule()



@property(nonatomic,copy)WXModuleKeepAliveCallback callback;
@end

WX_PlUGIN_EXPORT_MODULE(voice, VoiceModule)
@implementation VoiceModule

WX_EXPORT_METHOD(@selector(play:))

-(void)play:(NSDictionary *)options
{
//    Sound *s = [Sound sharedInstance];
//    [s play];
    ViewController *v = [ViewController manager];
//    ViewController *v = [[ViewController alloc]init];
    
    [v readItNow:options];
}

@end

