//
//  ViewController.h
//  SimpleSaveAndLoad
//
//  Created by Simon Allardice on 2/6/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// IBOutlets
@property (weak, nonatomic) IBOutlet UITextField *myTextField;
@property (weak, nonatomic) IBOutlet UIDatePicker *myDatePicker;

// IBActions
- (IBAction)dismissKeyboard:(id)sender;

// Methods
-(NSString *) getFilePath;
-(void) saveData;
-(void) loadData;

@end
