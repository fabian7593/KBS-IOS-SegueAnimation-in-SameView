//
//  KBSPushAnimation.h
//  PushAnimation
//
//  Created by Fabian Rosales on 10/9/15.
//  Copyright (c) 2015 KeyBellSoftCR. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface KBSPushAnimation : NSObject
{
   
}


#pragma animations


// Simulate push vertical animation, to Up and Down, with editVariables
// SecondsAnimationDuration =  the duration of the animation in milliseconds for example 0.5
// HeightRectangleAnimation = the int height of animation
// IsUpDirection = if is YES, the animation is to up, if is NO, th animation is down
// The self view controller
// The self view parent
+ (void)simulatePushVerticalAnimation:(double)secondsAnimationDuration
             HeightRectangleAnimation:(int)heightRectangleAnimation IsUpDirection:(BOOL)isUpDirection SelfView:(UIView *)selfView ViewParent:(UIView *)viewParent AnimationColor:(UIColor *)animationColor;




// Simulate push horizontal animation, to Right and Left, with editVariables
// RectMake = the rectMake of current view controller
// SecondsAnimationDuration =  the duration of the animation in milliseconds for example 0.5
// HeightRectangleAnimation = the int height of animation
// IsRightDirection = if is YES, the animation is to right, if is NO, th animation is left
// The self view controller
// The self view parent
+ (void)simulatePushHorizontalAnimation:(double)secondsAnimationDuration WidthRectangleAnimation:(int)widthRectangleAnimation IsRightDirection:(BOOL)isRightDirection SelfView:(UIView *)selfView ViewParent:(UIView *)viewParent AnimationColor:(UIColor *)animationColor;


//Simulate push vertical animation, to Up and Down, with default values
// IsUpDirection = if is YES, the animation is to up, if is NO, th animation is down
// The self view controller
// The self view parent
-(void)simulatePushVerticalDefaultAnimation:(BOOL)isUpDirection SelfView:(UIView *)selfView ViewParent:(UIView *)viewParent;



// IsRightDirection = if is YES, the animation is to right, if is NO, th animation is left
// The self view controller
// The self view parent
-(void)simulatePushHorizontalDefaultAnimation:(BOOL)isRightDirection SelfView:(UIView *)selfView ViewParent:(UIView *)viewParent;

@end
