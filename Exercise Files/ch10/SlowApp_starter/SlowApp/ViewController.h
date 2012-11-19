//
//  ViewController.h
//  SlowApp
//
//  Created by Simon on 2/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

- (IBAction)performOperation:(id)sender;

-(void) longRunningOperation;

@end
