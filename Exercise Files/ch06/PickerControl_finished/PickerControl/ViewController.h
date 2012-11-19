//
//  ViewController.h
//  PickerControl
//
//  Created by Simon Allardice on 2/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

- (IBAction)displayDay:(id)sender;
@end
