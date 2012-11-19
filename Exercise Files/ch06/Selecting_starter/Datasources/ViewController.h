//
//  ViewController.h
//  Datasources
//
//  Created by Simon Allardice on 2/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (nonatomic, strong) NSArray *moodlist;


@end
