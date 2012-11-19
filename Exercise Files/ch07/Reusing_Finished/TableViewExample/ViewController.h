//
//  ViewController.h
//  TableViewExample
//
//  Created by Simon Allardice on 2/4/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController 
<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSDictionary *courses;
@property (nonatomic, strong) NSArray *courseKeys;

@end
