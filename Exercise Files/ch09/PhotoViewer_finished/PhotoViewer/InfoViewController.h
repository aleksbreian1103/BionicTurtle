//
//  InfoViewController.h
//  PhotoViewer
//
//  Created by Simon Allardice on 2/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Photo.h"

@interface InfoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *detailsLabel;

@property (nonatomic, strong) Photo *currentPhoto;
- (IBAction)dismiss:(id)sender;

@end
