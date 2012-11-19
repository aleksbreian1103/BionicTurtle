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
        
        // use a synthesized setter
        [bob setAge:54];
        // could also use the dot-syntax format
        // bob.age = 54;
        
        [bob setName:@"Bob Jones"];
        // use a synthesized getter 
        NSLog(@"Bob's age is %i",[bob age]);
        
        // could also use the dot-syntax format 
        // NSLog(@"Bob's age is %i", bob.age );
    }
    return 0;
}

