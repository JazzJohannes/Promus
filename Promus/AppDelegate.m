//
//  AppDelegate.m
//  Promus
//
//  Created by John on 11/12/2013.
//  Copyright (c) 2013 USE-Software. All rights reserved.
//

#import "AppDelegate.h"
#import "PFMoveApplication.h"

#import "LogNavigatorWindowController.h"
#import "BuyBread.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    PFMoveToApplicationsFolderIfNecessary();
    // Insert code here to initialize your application
//    NSWindowController *sw = [[NSWindowController alloc] initWithWindowNibName:@"Promus"];
//    BOOL GeneralOpenPromusWindow = [[NSUserDefaults standardUserDefaults] boolForKey:@"GeneralOpenPromusWindow"];
//
//    if (GeneralOpenPromusWindow == 1)
//    {
//        [[self window] orderOut:self];
//    } else
//    {
//        [sw showWindow:self];
//    }

    // # NSWindowController and associated xib-files need to be initialized
    self.logsWindowController = [[LogNavigatorWindowController alloc] initWithWindowNibName:@"LogNavigatorWindowController"];
     self.buyBread = [[BuyBread alloc] initWithWindowNibName:@"BuyBread"];
}

// # Example of cross xib-file interaction (using NSWindowController)
- (IBAction) openConsole:(id)sender
{
    [self.logsWindowController showWindow:self];
}

- (IBAction) buyBreadDialog:(id)sender
{
    [self.buyBread showWindow:self];
}

@end
