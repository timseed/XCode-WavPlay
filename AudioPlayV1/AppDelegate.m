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
    hamplayer = [[HamWavPlay alloc] init];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}
- (IBAction)CqRequested:(id)sender {
    [hamplayer Cq];
}
- (IBAction)QrzRequested:(id)sender {
    [hamplayer Qrz];
}
- (IBAction)MyCallRequested:(id)sender {
    [hamplayer MyCall];
}

- (IBAction)StopRequested:(id)sender {
    [hamplayer Stop];
}


@end
