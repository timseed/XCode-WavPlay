//
//  HamWavPlay.h
//  AudioPlayV1
//
//  Created by Timothy H  Seed on 2/20/22.
//
#import <AVFoundation/AVFoundation.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HamWavPlay : NSObject
{
AVAudioPlayer *audioPlayer;
NSString *soundFilePath ;
NSURL *soundFileURL;
int VolumeLevel;
}
- (void) Stop;
- (void) Cq;        // This is a short Cq...
- (void) CqLong;
- (void) Qrz;
- (void) MyCall;
- (NSURL *) LoadUrl: (NSString *)fname :(NSString *)ftype ;
- (BOOL) PlayFile: (NSURL *)url_of_wav;
@end

NS_ASSUME_NONNULL_END
