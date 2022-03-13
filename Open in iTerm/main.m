//
//  main.m
//  Open in iTerm
//
//  Created by Georgio Nicolas on 13/03/2022.
//

#import <AppKit/AppKit.h>

int main(int argc, char *argv[]) {
    NSDictionary *errorMessage = nil;
    NSString *path = @"~/";
    
    NSAppleScript *script = [[[NSAppleScript alloc] initWithSource:
        @"tell application \"Finder\"\n"
            " if ((count of Finder windows) > 0) then\n"
               "  return (POSIX path of (target of Finder window 1 as alias))\n"
            "end if\n"
         "end tell"] autorelease];

    if (script != nil) {
        NSAppleEventDescriptor *result = [script executeAndReturnError:&errorMessage];
        if (result) {
            path = [[result stringValue] stringByStandardizingPath];
        }
    }
    
    id pool = [[NSAutoreleasePool alloc] init];
        
    [[NSTask launchedTaskWithLaunchPath:@"/usr/bin/open" arguments:@[@"-n", @"-b" ,@"com.googlecode.iterm2", @"--args", path]] waitUntilExit];
      
    [pool release];
    
    return 0;
}
