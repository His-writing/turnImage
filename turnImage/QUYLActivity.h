//
//  QUYLActivity.h
//  turnImage
//
//  Created by shuzhenguo on 14-8-27.
//  Copyright (c) 2014年 shuzhenguo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QUYLActivity : UIButton
{
    BOOL animating;
}
@property (nonatomic) CGFloat animationDuration;
+(QUYLActivity *)getActivity;
-(void)startActivity :(UIView *)view;

- (BOOL)isAnimating;

//开始
- (void)startAnimating;
//消失
- (void)stopAnimating;
//转一圈
- (void)spin;

@end
