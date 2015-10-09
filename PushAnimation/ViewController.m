//
//  ViewController.m
//  PushAnimation
//
//  Created by Fabian Rosales on 10/9/15.
//  Copyright (c) 2015 KeyBellSoftCR. All rights reserved.
//

#import "ViewController.h"
#import "KBSPushAnimation.h"


@interface ViewController ()
{
    KBSPushAnimation *kbsPushAnimation;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    kbsPushAnimation=[[KBSPushAnimation alloc]init];
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
           self.labelColor.text = @"Red";
            self.labelColor.textColor = [UIColor redColor];
            [kbsPushAnimation simulatePushHorizontalDefaultAnimation:YES SelfView:self.view ViewParent:self.parentViewController.view];
            break;
            
        case UISwipeGestureRecognizerDirectionLeft:
            self.labelColor.text = @"Green";
            self.labelColor.textColor = [UIColor greenColor];
            [kbsPushAnimation simulatePushHorizontalDefaultAnimation:NO SelfView:self.view ViewParent:self.parentViewController.view];
            break;
            
        case UISwipeGestureRecognizerDirectionUp:
            self.labelColor.text = @"Purple";
            self.labelColor.textColor = [UIColor purpleColor];
            [kbsPushAnimation simulatePushVerticalDefaultAnimation:YES SelfView:self.view ViewParent:self.parentViewController.view];
            break;
            
        case UISwipeGestureRecognizerDirectionDown:
            self.labelColor.text = @"Blue";
            self.labelColor.textColor = [UIColor blueColor];
            [kbsPushAnimation simulatePushVerticalDefaultAnimation:NO SelfView:self.view ViewParent:self.parentViewController.view];
            break;
            
        default:
            break;
    }
}



@end
