//
//  ViewController.m
//  DebugStarter
//
//  Created by Simon on 2/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize myLabel;


- (int) calculateFirstValue {
	return 10000;
}

- (int) calculateSecondValue {
    
	// imagine a lot of complex code here!
    
    int a = 0;
    int b = [self calculateFirstValue];
    
    for (int i = 0; i < 5000; i++) {
        b++;
    }
    
	return a;
}

- (IBAction) doSomething: (id) sender {
    
	int firstVal = [self calculateFirstValue];
	int secondVal = [self calculateSecondValue];
	
	int result = firstVal / secondVal;
	
	NSString *msg = [[NSString alloc] initWithFormat:@"The result is %d", result];
	
    [myLabel setText:msg];
	
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
