//
//  ViewController.h
//  UsingViews
//
//  Created by panda zheng on 13-7-1.
//  Copyright (c) 2013年 panda zheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIPageControl *pageControl;
    IBOutlet UIImageView *imageView1;
    IBOutlet UIImageView *imageView2;
    
    UIImageView *tempImageView,*bgImageView;
}

@property (nonatomic,strong) UIPageControl *pageControl;
@property (nonatomic,strong) UIImageView *imageView1;
@property (nonatomic,strong) UIImageView *imageView2;

@end
