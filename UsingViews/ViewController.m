//
//  ViewController.m
//  UsingViews
//
//  Created by panda zheng on 13-7-1.
//  Copyright (c) 2013年 panda zheng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize pageControl;
@synthesize imageView1,imageView2;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [imageView1 setImage:[UIImage imageNamed:@"iMac_old.jpeg"]];
    tempImageView = imageView2;
    [pageControl addTarget:self action:@selector(pageTurning:) forControlEvents:UIControlEventValueChanged];
}

- (void) pageTurning: (UIPageControl*) pageController
{
    NSInteger nextPage = [pageControl currentPage];
    switch (nextPage) {
        case 0:
            [tempImageView setImage:[UIImage imageNamed:@"iMac_old.jpeg"]];
            break;
        case 1:
            [tempImageView setImage:[UIImage imageNamed:@"iMac.jpeg"]];
            break;
        case 2:
            [tempImageView setImage:[UIImage imageNamed:@"Mac8100.jpeg"]];
            break;
        case 3:
            [tempImageView setImage:[UIImage imageNamed:@"MacPlus.jpg"]];
            break;
        case 4:
            [tempImageView setImage:[UIImage imageNamed:@"MacSE.jpeg"]];
            break;
        default:
            break;
    }
    
    if (tempImageView.tag == 0)
    {
        tempImageView = imageView2;
        bgImageView = imageView1;
    }
    else
    {
        tempImageView = imageView1;
        bgImageView = imageView2;
    }
    
    [UIView beginAnimations:@"flipping view" context:nil];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:tempImageView cache:YES];
    
    [tempImageView setHidden:YES];
    [UIView commitAnimations];
    
    [UIView beginAnimations:@"flpping view" context:nil];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:bgImageView cache:YES];
    [bgImageView setHidden:NO];
    [UIView commitAnimations];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
