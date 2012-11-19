//
//  ViewController.h
//  KeyboardStarter
//
//  Created by Simon Allardice on 2/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *myTextField;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

- (IBAction)changeLabel:(id)sender;
- (IBAction)dismissKeyboard:(id)sender;


@end
