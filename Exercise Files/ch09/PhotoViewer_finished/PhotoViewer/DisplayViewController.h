//
//  DisplayViewController.h
//  PhotoViewer
//
//  Created by Simon Allardice on 2/7/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Photo.h"
#import "InfoViewController.h"

@interface DisplayViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *currentImage;

@property (nonatomic, strong) Photo *currentPhoto;

@end
