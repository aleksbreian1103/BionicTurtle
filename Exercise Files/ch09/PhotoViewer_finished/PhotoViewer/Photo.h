//
//  Photo.h
//  PhotoViewer
//
//  Created by Simon Allardice on 2/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Photo : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *filename;
@property (nonatomic, strong) NSString *notes;

@end
