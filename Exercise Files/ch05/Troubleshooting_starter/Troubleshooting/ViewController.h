//
//  ViewController.h
//  Troubleshooting
//
//  Created by Simon Allardice on 2/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lblTime;

- (IBAction)updateTime:(id)sender;


@end
