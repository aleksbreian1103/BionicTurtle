//
//  CoursesTableViewController.h
//  CDCourses
//
//  Created by Aleksander B Hansen on 1/20/13.
//  Copyright (c) 2013 ClearStoneGroup LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CoursesTableViewController : UITableViewController


@property(nonatomic, strong) NSManagedObjectContext *managedObjectContext;

@property(nonatomic, strong) NSFetchedResultsController *fetchedResultsController;

@end
