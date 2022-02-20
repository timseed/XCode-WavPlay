//
//  AppDelegate.h
//  AudioPlayV1
//
//  Created by Timothy H  Seed on 2/20/22.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
{
    AVAudioPlayer *audioPlayer;
    NSString *soundFilePath ;
    NSURL *soundFileURL;
    int VolumeLevel;
}

- (void) Cq;
- (void) Qrz;
- (void) MyCall;
@end

