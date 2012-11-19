//
//  ViewController.m
//  SlowApp
//
//  Created by Simon on 2/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize myLabel;

dispatch_queue_t myQueue;

- (IBAction)performOperation:(id)sender {
    myQueue = dispatch_queue_create("com.lynda.gcdtest", NULL);
    dispatch_async(myQueue, ^{ [self longRunningOperation]; } );
}


-(void) longRunningOperation {
    
    [NSThread sleepForTimeInterval:5]; 
    
    dispatch_async(dispatch_get_main_queue(), ^ { 
      [myLabel setText:[NSString stringWithFormat:@"Results: %d", arc4random()]];
    } );
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
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setMyLabel:nil];
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
