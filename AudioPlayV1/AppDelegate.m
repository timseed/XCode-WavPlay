//
//  AppDelegate.m
//  AudioPlayV1
//
//  Created by Timothy H  Seed on 2/20/22.
//
#import <AVFoundation/AVFoundation.h>
#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}
- (IBAction)CqRequested:(id)sender {
    [self Cq];
}
- (IBAction)QrzRequested:(id)sender {
    [self Qrz];
}
- (IBAction)MyCallRequested:(id)sender {
    [self MyCall];
}

- (IBAction)StopRequested:(id)sender {
    [audioPlayer stop];
}

- (void) Cq{
    NSLog(@"Cq Called");
    NSError *error=nil;
    
    NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:@"Voice Contest"  ofType:@"wav"];
    NSLog(@"soundFilePath is %@",soundFilePath);
    NSURL *soundFileURL = [NSURL fileURLWithPath:soundFilePath];
    NSLog(@"File URL is %@",soundFileURL);
    if  ([soundFileURL checkResourceIsReachableAndReturnError:&error])
    {
        NSLog(@"Resource is reachable");
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundFileURL error:&error];
        if (!error)
        {
            NSLog(@"Trying to play the file");
            audioPlayer.numberOfLoops = 1;
            [audioPlayer play];
        }
        else{
            NSLog(@"Something went wrong");
            NSLog(@"Error is %@",error);
        }
    }
    else{
        NSLog(@"Resource is not reachable.");
    }
}
- (void) Qrz{
    NSLog(@"Cq Called");
    NSError *error=nil;
    
    NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:@"QRZ"  ofType:@"wav"];
    NSLog(@"soundFilePath is %@",soundFilePath);
    NSURL *soundFileURL = [NSURL fileURLWithPath:soundFilePath];
    NSLog(@"File URL is %@",soundFileURL);
    if  ([soundFileURL checkResourceIsReachableAndReturnError:&error])
    {
        NSLog(@"Resource is reachable");
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundFileURL error:&error];
        if (!error)
        {
            NSLog(@"Trying to play the file");
            audioPlayer.numberOfLoops = 1;
            [audioPlayer play];
        }
        else{
            NSLog(@"Something went wrong");
            NSLog(@"Error is %@",error);
        }
    }
    else{
        NSLog(@"Resource is not reachable.");
    }
}

- (void) MyCall{
    NSLog(@"My Call Called");
    NSError *error=nil;
    
    NSString *soundFilePath = [[NSBundle mainBundle] pathForResource:@"MyCall"  ofType:@"wav"];
    NSLog(@"soundFilePath is %@",soundFilePath);
    NSURL *soundFileURL = [NSURL fileURLWithPath:soundFilePath];
    NSLog(@"File URL is %@",soundFileURL);
    if  ([soundFileURL checkResourceIsReachableAndReturnError:&error])
    {
        NSLog(@"Resource is reachable");
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundFileURL error:&error];
        if (!error)
        {
            NSLog(@"Trying to play the file");
            audioPlayer.numberOfLoops = 1;
            [audioPlayer play];
        }
        else{
            NSLog(@"Something went wrong");
            NSLog(@"Error is %@",error);
        }
    }
    else{
        NSLog(@"Resource is not reachable.");
    }
}

@end
