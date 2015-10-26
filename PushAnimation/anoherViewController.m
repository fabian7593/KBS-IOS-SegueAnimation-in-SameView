//
//  anoherViewController.m
//  PushAnimation
//
//  Created by Fabian Rosales on 10/9/15.
//  Copyright (c) 2015 KeyBellSoftCR. All rights reserved.
//

#import "anoherViewController.h"
#import "KBSPushAnimation.h"
@interface anoherViewController ()

@end

@implementation anoherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//use swipe by diferent directioner
-(IBAction)handleSwipe:(UIGestureRecognizer *)sender{
    UISwipeGestureRecognizerDirection direction = [(UISwipeGestureRecognizer *) sender direction];
    
    switch (direction) {
        case UISwipeGestureRecognizerDirectionRight:
            
            self.view.backgroundColor = [UIColor redColor];
            [KBSPushAnimation simulatePushHorizontalAnimation:0.5 WidthRectangleAnimation:350 IsRightDirection:NO SelfView:self.view ViewParent:self.parentViewController.view AnimationColor:[UIColor redColor]];
            break;
            
        case UISwipeGestureRecognizerDirectionLeft:
            
            self.view.backgroundColor = [UIColor greenColor];
             [KBSPushAnimation simulatePushHorizontalAnimation:0.5 WidthRectangleAnimation:350 IsRightDirection:YES SelfView:self.view ViewParent:self.parentViewController.view AnimationColor:[UIColor greenColor]];
            break;
            
        case UISwipeGestureRecognizerDirectionUp:
          
            self.view.backgroundColor = [UIColor purpleColor];
       [KBSPushAnimation simulatePushVerticalAnimation:0.5 HeightRectangleAnimation:550 IsUpDirection:YES SelfView:self.view ViewParent:self.parentViewController.view AnimationColor:[UIColor purpleColor]];
            break;
            
        case UISwipeGestureRecognizerDirectionDown:
            
           self.view.backgroundColor = [UIColor blueColor];
           [KBSPushAnimation simulatePushVerticalAnimation:0.5 HeightRectangleAnimation:550 IsUpDirection:NO SelfView:self.view ViewParent:self.parentViewController.view AnimationColor:[UIColor blueColor]];
            break;
            
        default:
            break;
    }
}

@end
