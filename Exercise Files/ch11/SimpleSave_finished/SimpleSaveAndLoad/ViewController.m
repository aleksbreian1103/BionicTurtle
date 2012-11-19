//
//  ViewController.m
//  SimpleSaveAndLoad
//
//  Created by Simon Allardice on 2/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize myTextField;
@synthesize myDatePicker;

- (NSString *) getFilePath {
    // placeholder
    NSArray *pathArray = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return [[pathArray objectAtIndex:0] stringByAppendingPathComponent:@"saved.plist"];
    
}

-(void) saveData {
    // save data here
    NSArray *value = [[NSArray alloc] initWithObjects:[myTextField text],[myDatePicker date], nil];
    [value writeToFile:[self getFilePath] atomically:YES];
}

- (void) loadData {
    // load data here
    NSString *myPath = [self getFilePath];
    BOOL fileExists = [[NSFileManager defaultManager] fileExistsAtPath:myPath];
    
    if (fileExists) {
        NSArray *values = [[NSArray alloc] initWithContentsOfFile:myPath];
        myTextField.text = [values objectAtIndex:0];
        myDatePicker.date = [values objectAtIndex:1];
    }
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
    [self loadData];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setMyTextField:nil];
    [self setMyDatePicker:nil];
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

- (IBAction)dismissKeyboard:(id)sender {
    [myTextField resignFirstResponder];
}
@end
