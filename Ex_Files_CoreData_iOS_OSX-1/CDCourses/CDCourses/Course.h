//
//  Course.h
//  CDCourses
//
//  Created by Aleksander B Hansen on 1/20/13.
//  Copyright (c) 2013 ClearStoneGroup LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Course : NSManagedObject

@property (nonatomic, retain) NSString * title;
@property (nonatomic, retain) NSString * author;
@property (nonatomic, retain) NSDate * releaseDate;

@end
