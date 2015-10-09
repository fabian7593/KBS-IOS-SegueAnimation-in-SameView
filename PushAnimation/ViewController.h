//
//  ViewController.h
//  PushAnimation
//
//  Created by Fabian Rosales on 10/9/15.
//  Copyright (c) 2015 KeyBellSoftCR. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(nonatomic,strong) IBOutlet UILabel *labelColor;
@property(nonatomic,strong) IBOutlet UIButton *button;



//events
-(IBAction)handleSwipe:(UIGestureRecognizer *)sender;

@end

