//
//  Player.h
//  CustomClasses
//
//  Created by Simon Allardice on 2/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject 

@property int age;
@property (nonatomic,strong) NSString *name;

-(void)simpleMethod;

@end
