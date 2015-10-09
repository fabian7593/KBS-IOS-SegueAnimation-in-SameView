//
//  KBSPushAnimation.m
//  PushAnimation
//
//  Created by Fabian Rosales on 10/9/15.
//  Copyright (c) 2015 KeyBellSoftCR. All rights reserved.
//

#import "KBSPushAnimation.h"

@implementation KBSPushAnimation
{
    NSNumber *animationDuration;
    NSNumber *heightRectangleAnimationDefault;
    NSNumber *widthRectangleAnimationDefault;
    UIColor *defaultColor;
}

- (id)init
{
    if( self = [super init] )
    {
        animationDuration=[NSNumber numberWithDouble:0.1];
        heightRectangleAnimationDefault = [NSNumber numberWithInt:520];
        widthRectangleAnimationDefault = [NSNumber numberWithInt:320];
        defaultColor = [UIColor whiteColor];
    }
    return self;
}


#pragma KBSPushAnimations
// Simulate push vertical animation, to Up and Down, with editVariables
// SecondsAnimationDuration =  the duration of the animation in milliseconds for example 0.5
// HeightRectangleAnimation = the int height of animation
// IsUpDirection = if is YES, the animation is to up, if is NO, th animation is down
// The self view controller
// The self view parent
+ (void)simulatePushVerticalAnimation:(double)secondsAnimationDuration
             HeightRectangleAnimation:(int)heightRectangleAnimation IsUpDirection:(BOOL)isUpDirection SelfView:(UIView *)selfView ViewParent:(UIView *)viewParent AnimationColor:(UIColor *)animationColor{
    
    CGRect rectMake = selfView.frame;
    
    if(isUpDirection)
    {
        [UIView animateWithDuration:secondsAnimationDuration animations:^{
            // this moves the view off screen to the UP
            selfView.frame = CGRectMake(0, -heightRectangleAnimation, rectMake.size.width, rectMake.size.height);
            viewParent.backgroundColor  = animationColor;
            
            
        } completion:^(BOOL finished) {
            // this pops the view over to the down side of the screen
            selfView.frame = CGRectMake(0, heightRectangleAnimation, rectMake.size.width, rectMake.size.height);
            viewParent.backgroundColor  = animationColor;
            
            //the animation seconds duration
            [UIView animateWithDuration:secondsAnimationDuration animations:^{
                // and this slides it in from the down
                selfView.frame = CGRectMake(0, 0, rectMake.size.width, rectMake.size.height);
                viewParent.backgroundColor  = animationColor;
            }];
        }];
    }
    //if is down
    else{
        [UIView animateWithDuration:secondsAnimationDuration animations:^{
            // this moves the view off screen to the down
            selfView.frame = CGRectMake(0, heightRectangleAnimation, rectMake.size.width, rectMake.size.height);
            viewParent.backgroundColor  = animationColor;
            
            
        } completion:^(BOOL finished) {
            // this pops the view over to the up side of the screen
            selfView.frame = CGRectMake(0, -heightRectangleAnimation, rectMake.size.width, rectMake.size.height);
            viewParent.backgroundColor  = animationColor;
            
            //the animation seconds duration
            [UIView animateWithDuration:secondsAnimationDuration animations:^{
                // and this slides it in from the up
                selfView.frame = CGRectMake(0, 0, rectMake.size.width, rectMake.size.height);
                viewParent.backgroundColor  = animationColor;
            }];
        }];
    }
    
}


// Simulate push horizontal animation, to Right and Left, with editVariables
// RectMake = the rectMake of current view controller
// SecondsAnimationDuration =  the duration of the animation in milliseconds for example 0.5
// HeightRectangleAnimation = the int height of animation
// IsRightDirection = if is YES, the animation is to right, if is NO, th animation is left
// The self view controller
// The self view parent
+ (void)simulatePushHorizontalAnimation:(double)secondsAnimationDuration WidthRectangleAnimation:(int)widthRectangleAnimation IsRightDirection:(BOOL)isRightDirection SelfView:(UIView *)selfView ViewParent:(UIView *)viewParent AnimationColor:(UIColor *)animationColor{
    
    CGRect rectMake = selfView.frame;
    
    if(!isRightDirection)
    {
        [UIView animateWithDuration:secondsAnimationDuration animations:^{
            // this moves the view off screen to the left
            selfView.frame = CGRectMake(-widthRectangleAnimation, 0, rectMake.size.width, rectMake.size.height);
            viewParent.backgroundColor  = animationColor;
            
            
        } completion:^(BOOL finished) {
            // this pops the view over to the right side of the screen
            selfView.frame = CGRectMake(widthRectangleAnimation, 0, rectMake.size.width, rectMake.size.height);
            viewParent.backgroundColor  = animationColor;
            
            [UIView animateWithDuration:secondsAnimationDuration animations:^{
                // and this slides it in from the right
                selfView.frame = CGRectMake(0, 0, rectMake.size.width, rectMake.size.height);
                viewParent.backgroundColor  = animationColor;
            }];
        }];
    }else{
        [UIView animateWithDuration:secondsAnimationDuration animations:^{
            // this moves the view off screen to the left
            selfView.frame = CGRectMake(widthRectangleAnimation, 0, rectMake.size.width, rectMake.size.height);
            viewParent.backgroundColor  = animationColor;
            
            
        } completion:^(BOOL finished) {
            // this pops the view over to the right side of the screen
            selfView.frame = CGRectMake(-widthRectangleAnimation, 0, rectMake.size.width, rectMake.size.height);
            viewParent.backgroundColor  = animationColor;
            
            [UIView animateWithDuration:secondsAnimationDuration animations:^{
                // and this slides it in from the right
                selfView.frame = CGRectMake(0, 0, rectMake.size.width, rectMake.size.height);
                viewParent.backgroundColor  = animationColor;
            }];
        }];
    }
}




















//Simulate push vertical animation, to Up and Down, with default values
// IsUpDirection = if is YES, the animation is to up, if is NO, th animation is down
// The self view controller
// The self view parent
-(void)simulatePushVerticalDefaultAnimation:(BOOL)isUpDirection SelfView:(UIView *)selfView ViewParent:(UIView *)viewParent{
    
    
    CGRect rectMake = selfView.frame;
    
    if(isUpDirection)
    {
        [UIView animateWithDuration:[animationDuration doubleValue] animations:^{
            // this moves the view off screen to the UP
            selfView.frame = CGRectMake(0, -[heightRectangleAnimationDefault integerValue], rectMake.size.width, rectMake.size.height);
            viewParent.backgroundColor  = defaultColor;
            
            
        } completion:^(BOOL finished) {
            // this pops the view over to the down side of the screen
            selfView.frame = CGRectMake(0, [heightRectangleAnimationDefault integerValue], rectMake.size.width, rectMake.size.height);
            viewParent.backgroundColor  = defaultColor;
            
            //the animation seconds duration
            [UIView animateWithDuration:[animationDuration doubleValue] animations:^{
                // and this slides it in from the down
                selfView.frame = CGRectMake(0, 0, rectMake.size.width, rectMake.size.height);
                viewParent.backgroundColor  = defaultColor;
            }];
        }];
    }
    //if is down
    else{
        [UIView animateWithDuration:[animationDuration doubleValue] animations:^{
            // this moves the view off screen to the down
            selfView.frame = CGRectMake(0, [heightRectangleAnimationDefault integerValue], rectMake.size.width, rectMake.size.height);
            viewParent.backgroundColor  = defaultColor;
            
            
        } completion:^(BOOL finished) {
            // this pops the view over to the up side of the screen
            selfView.frame = CGRectMake(0, -[heightRectangleAnimationDefault integerValue], rectMake.size.width, rectMake.size.height);
            viewParent.backgroundColor  = defaultColor;
            
            //the animation seconds duration
            [UIView animateWithDuration:[animationDuration doubleValue] animations:^{
                // and this slides it in from the up
                selfView.frame = CGRectMake(0, 0, rectMake.size.width, rectMake.size.height);
                viewParent.backgroundColor  = defaultColor;
            }];
        }];
    }

}

// IsRightDirection = if is YES, the animation is to right, if is NO, th animation is left
// The self view controller
// The self view parent
-(void)simulatePushHorizontalDefaultAnimation:(BOOL)isRightDirection SelfView:(UIView *)selfView ViewParent:(UIView *)viewParent{
    
    
    CGRect rectMake = selfView.frame;
    
    if(!isRightDirection)
    {
        [UIView animateWithDuration:[animationDuration doubleValue] animations:^{
            // this moves the view off screen to the left
            selfView.frame = CGRectMake(-[widthRectangleAnimationDefault integerValue], 0, rectMake.size.width, rectMake.size.height);
            viewParent.backgroundColor  = defaultColor;
            
            
        } completion:^(BOOL finished) {
            // this pops the view over to the right side of the screen
            selfView.frame = CGRectMake([widthRectangleAnimationDefault integerValue], 0, rectMake.size.width, rectMake.size.height);
            viewParent.backgroundColor  = defaultColor;
            
            [UIView animateWithDuration:[animationDuration doubleValue] animations:^{
                // and this slides it in from the right
                selfView.frame = CGRectMake(0, 0, rectMake.size.width, rectMake.size.height);
                viewParent.backgroundColor  = defaultColor;
            }];
        }];
    }else{
        [UIView animateWithDuration:[animationDuration doubleValue] animations:^{
            // this moves the view off screen to the left
            selfView.frame = CGRectMake([widthRectangleAnimationDefault integerValue], 0, rectMake.size.width, rectMake.size.height);
            viewParent.backgroundColor  = defaultColor;
            
            
        } completion:^(BOOL finished) {
            // this pops the view over to the right side of the screen
            selfView.frame = CGRectMake(-[widthRectangleAnimationDefault integerValue], 0, rectMake.size.width, rectMake.size.height);
            viewParent.backgroundColor  = defaultColor;
            
            [UIView animateWithDuration:[animationDuration doubleValue] animations:^{
                // and this slides it in from the right
                selfView.frame = CGRectMake(0, 0, rectMake.size.width, rectMake.size.height);
                viewParent.backgroundColor  = defaultColor;
            }];
        }];
    }
    
}

@end
