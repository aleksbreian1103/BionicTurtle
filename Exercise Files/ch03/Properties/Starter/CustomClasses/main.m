//
//  main.m
//  CustomClasses
//
//  Created by Simon Allardice on 2/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        Player *bob = [[Player alloc]init];
        [bob simpleMethod];
        
        NSLog(@"Hello, World!");
        
    }
    return 0;
}

