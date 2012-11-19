//
//  ViewController.h
//  TableExample
//
//  Created by Simon on 2/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSDictionary *courses;
@property (nonatomic, strong) NSArray *courseKeys;

// Add NSDictionary and NSArray for second set
//@property (nonatomic, strong) NSDictionary *courses_web;
//@property (nonatomic, strong) NSArray *courseKeys_web;

@end
