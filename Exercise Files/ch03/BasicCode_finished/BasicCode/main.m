//
//  main.m
//  BasicCode
//
//  Created by Simon Allardice on 2/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
    @autoreleasepool {
        
        // insert code here...
        int minutes = 60;
        int hours = 24;
        int days = 365;
        
       // BOOL doesThisWork = YES;
        
        int minutesInYear = minutes * hours * days;
        
        NSLog(@"There are %i minutes in a year", minutesInYear);
  
    }
    return 0;
}

