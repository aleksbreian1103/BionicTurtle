//
//  ViewController.m
//  TableExample
//
//  Created by Simon on 2/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize courses, courseKeys, courses_web, courseKeys_web;


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return [courses count];
    } else {
        return [courses_web count];
    }
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return @"iOS Courses";
    } else {
        return @"Web Courses";
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] 
                initWithStyle:UITableViewCellStyleSubtitle
                reuseIdentifier:@"cell"];
    }
    
    NSString *currentCourseName;
    
    // Which section are we in?
    if ([indexPath section] == 0) {
        currentCourseName = [courseKeys objectAtIndex:indexPath.row];
    } else {
        currentCourseName = [courseKeys_web objectAtIndex:indexPath.row];
    }
    
    [[cell textLabel] setText:currentCourseName];
    
    
    // Now, get the author name
    NSString *currentAuthorName;
    if ([indexPath section] == 0) {
        currentAuthorName = [courses objectForKey:[courseKeys objectAtIndex:indexPath.row]];
    } else {
        currentAuthorName = [courses_web objectForKey:[courseKeys_web objectAtIndex:indexPath.row]];
    }
    [[cell detailTextLabel] setText:currentAuthorName];
   
    // Retrieve an image
	NSString *imagefile = [[NSBundle mainBundle]  pathForResource:@"cellimage" ofType:@"png"];
	UIImage *image = [[UIImage alloc] initWithContentsOfFile:imagefile];
	// Add the image to the table cell
	[[cell imageView]setImage:image];

    // accessory type
	cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;

	return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // load iOS courses
    NSString *myfile = [[NSBundle mainBundle] 
                        pathForResource:@"courses" ofType:@"plist"];
    courses = [[NSDictionary alloc] initWithContentsOfFile:myfile];
    courseKeys = [courses allKeys];
    
    // load Web courses
    myfile = [[NSBundle mainBundle] 
                        pathForResource:@"courses_web" ofType:@"plist"];
    courses_web = [[NSDictionary alloc] initWithContentsOfFile:myfile];
    courseKeys_web = [courses_web allKeys];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
