//
//  QUYLActivity.m
//  turnImage
//
//  Created by shuzhenguo on 14-8-27.
//  Copyright (c) 2014年 shuzhenguo. All rights reserved.
//

#import "QUYLActivity.h"
#import <QuartzCore/QuartzCore.h>

@implementation QUYLActivity
static QUYLActivity *activity=nil;


+(QUYLActivity*)getActivity{
    if (activity==nil) {
        activity=[[QUYLActivity alloc]init];
        
    }
    return activity;
}

-(void)startActivity :(UIView *)view{
   
    
    
    activity.center=view.center;
    activity.autoresizingMask = (UIViewAutoresizingFlexibleTopMargin |
                                          UIViewAutoresizingFlexibleBottomMargin |
                                          UIViewAutoresizingFlexibleLeftMargin |
                                          UIViewAutoresizingFlexibleRightMargin);
    
    [view addSubview:activity];
    
    [activity startAnimating];

}



+(void)stopAnimating:(UIView *)view{

    [activity stopAnimating];

}



- (id)init
{
    self = [super initWithFrame:CGRectMake(0, 0, 28, 28)];
    if (self)
    {
        self.showsTouchWhenHighlighted = NO;
        [self setBackgroundImage:[UIImage imageNamed:@"qy_loading"] forState:UIControlStateNormal];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.showsTouchWhenHighlighted = NO;
        [self setBackgroundImage:[UIImage imageNamed:@"qy_loading"] forState:UIControlStateNormal];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        self.showsTouchWhenHighlighted = YES;
        [self setBackgroundImage:[UIImage imageNamed:@"qy_loading"] forState:UIControlStateNormal];
    }
    return self;
}

#pragma mark - Public Methods

- (BOOL)isAnimating
{
    CAAnimation *spinAnimation = [self.layer animationForKey:@"spinAnimation"];
    return (animating || spinAnimation);
}

- (void)startAnimating
{
    self.hidden=NO;
    animating = YES;
    [self spin];
}

- (void)stopAnimating
{
    self.hidden=YES;
    animating = NO;
}

- (void)spin
{
    CABasicAnimation *spinAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    spinAnimation.byValue = [NSNumber numberWithFloat:2*M_PI];
    spinAnimation.duration = self.animationDuration;
    spinAnimation.delegate = self;
    [self.layer addAnimation:spinAnimation forKey:@"spinAnimation"];
}

#pragma mark - Animation Delegates

- (void)animationDidStop:(CAAnimation *)theAnimation finished:(BOOL)flag
{
    if (animating)
    {
        [self spin];
    }
}

#pragma mark - Property Methods

- (CGFloat)animationDuration
{
    if (!_animationDuration)
    {
        _animationDuration = 1.0f;
    }
    return _animationDuration;
}

@end
