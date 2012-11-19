//
//  main.m
//  PointerLesson
//
//  Created by Aleksander B Hansen on 11/18/12.
//  Copyright (c) 2012 ClearStoneGroup LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        
        int x = 1;
        int y = x;
        
        int *ip;
        ip = &x;
        y = *ip;
        
        
        NSLog(@"The value of x is %i, the value of y is %i."
              "the value of *ip is %i, the value of ip is %i, the value of &x is %i the value of &y is %i, y is %i", x, y, *ip, ip, &x, &y, y);
        
    }
    return 0;
}

