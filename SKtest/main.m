//
//  main.m
//  Screensaver-Killer
//
//  Created by Cui Hongya on 14-4-3.
//  Copyright (c) 2014 Cui Hongya. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <IOKit/pwr_mgt/IOPMLib.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        //NSLog(@"Hello, World!");
        CFStringRef* reasonForActivity= CFSTR("ScreenSaver Killer!!");
        IOPMAssertionID assertionID;
        IOReturn success = IOPMAssertionCreateWithName(kIOPMAssertionTypeNoDisplaySleep,
                kIOPMAssertionLevelOn, reasonForActivity, &assertionID);
        if (success == kIOReturnSuccess)
        {
            //NSLog(@"OK!");
            //Add the work you need to do without
            //  the system sleeping here.
            printf("Ready, Press any key to close this app\n");
            getchar();
            success = IOPMAssertionRelease(assertionID);
            //The system will be able to sleep again.
        }




    }

    return 0;
}
