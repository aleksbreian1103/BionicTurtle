//
//  ViewController.h
//  iDecide
//
//  Created by Aleksander B Hansen on 11/17/12.
//  Copyright (c) 2012 ClearStoneGroup LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface ViewController :
UIViewController {
    UILabel *decisionText_;
}
@property (retain, nonatomic)
IBOutlet UILabel *decisionText;
-(IBAction)buttonPressed:(id)
sender;

@end
