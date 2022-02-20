//
//  HamWavPlay.m
//  AudioPlayV1
//
//  Created by Timothy H  Seed on 2/20/22.
//

#import "HamWavPlay.h"

@implementation HamWavPlay


- (BOOL) PlayFile: (NSURL *)url_of_wav
{
    NSError *error=nil;
    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url_of_wav error:&error];
    if (!error)
    {
        NSLog(@"Trying to play the file");
        audioPlayer.numberOfLoops = 1;
        [audioPlayer play];
        return TRUE;
    }
    else{
        NSLog(@"Something went wrong");
        NSLog(@"Error is %@",error);
        return FALSE;
    }
}

- (NSURL *) LoadUrl: (NSString *)fname :(NSString *)ftype
{
    NSLog(@"fname is %@",fname);
    NSLog(@"ftype is %@",ftype);
    NSError *error=nil;
    NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:fname  ofType:ftype];
    NSLog(@"soundFilePath is %@",soundFilePath);
    NSURL *soundFileURL = [NSURL fileURLWithPath:soundFilePath];
    NSLog(@"File URL is %@",soundFileURL);
    if  ([soundFileURL checkResourceIsReachableAndReturnError:&error])
    {
        NSLog(@"Resource is reachable");
        return soundFileURL;
    }
    else
    {
        return nil;
    }
}

- (void) Stop
{
    [audioPlayer stop];
}


- (void) Cq // This is a short Cq...
{
    NSURL *cq = [self LoadUrl:@"Voice Contest" :@"wav"];
    if (cq != nil)
    {
        [self PlayFile:cq];
    }
}
- (void) CqLong
{
    NSURL *af = [self LoadUrl:@"Your Number" :@"wav"];
    if (af != nil)
    {
        [self PlayFile:af];
    }
}
- (void) Qrz{
    NSURL *af = [self LoadUrl:@"QRZ" :@"wav"];
    if (af != nil)
    {
        [self PlayFile:af];
    }
}
- (void) MyCall{
    NSURL *af = [self LoadUrl:@"MyCall" :@"wav"];
    if (af != nil)
    {
        [self PlayFile:af];
    }
}

@end
