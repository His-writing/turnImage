//
//  ViewController.m
//  turnImage
//
//  Created by shuzhenguo on 14-8-27.
//  Copyright (c) 2014年 shuzhenguo. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize viewButton;
@synthesize  navigationBarItem;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    viewButton = [[DAReloadActivityButton alloc] init];
//    [viewButton addTarget:self action:@selector(animate:) forControlEvents:UIControlEventTouchUpInside];
//    viewButton.center = CGPointMake(200, 176);
//    viewButton.autoresizingMask = (UIViewAutoresizingFlexibleTopMargin |
//                                   UIViewAutoresizingFlexibleBottomMargin |
//                                   UIViewAutoresizingFlexibleLeftMargin |
//                                   UIViewAutoresizingFlexibleRightMargin);
//    [self.view addSubview:viewButton];
//
//
//    navigationBarItem = [[DAReloadActivityButton alloc] init];
////    [navigationBarItem addTarget:self action:@selector(animatestr:) forControlEvents:UIControlEventTouchUpInside];
////    navigationBarItem.center = CGPointMake(320,100 );
//    
////    self.view.center=;
//    
//    navigationBarItem.center=self.view.center;
////    navigationBarItem.center = CGPointMake(0, 0);
//
//    navigationBarItem.autoresizingMask = (UIViewAutoresizingFlexibleTopMargin |
//                                   UIViewAutoresizingFlexibleBottomMargin |
//                                   UIViewAutoresizingFlexibleLeftMargin |
//                                   UIViewAutoresizingFlexibleRightMargin);
//    [self.view addSubview:navigationBarItem];
//    
//    
//    
//    [navigationBarItem startAnimating];
//

    UIButton *buton=[UIButton buttonWithType:UIButtonTypeCustom];
    buton.backgroundColor=[UIColor redColor];
    
    buton.frame=CGRectMake(20, 40, 90, 90);
    [buton addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    

    [[QUYLActivity getActivity]startActivity:self.view];


    [self.view addSubview:buton];
    
}
-(void)click
{

    [[QUYLActivity getActivity]stopAnimating];


}
//-(void)animatestr:( DAReloadActivityButton*)button
//{
//   
//    
//    if ([button isAnimating])
//    {
//        [button stopAnimating];
//    }
//    else
//    {
//        [button startAnimating];
//    }
//    
//
//    button.enabled=NO;
//
//}
//- (void)animate:(DAReloadActivityButton *)button
//{
//    button.hidden=YES;
//
//    
//    [button stopAnimating];
//
//    
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
