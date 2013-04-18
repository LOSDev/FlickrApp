//
//  PhotoDetailViewController.m
//  FlickerApp
//
//  Created by Rincewind on 17.01.13.
//  Copyright (c) 2013 Rincewind. All rights reserved.
//

#import "PhotoDetailViewController.h"

@interface PhotoDetailViewController () <UIScrollViewDelegate, UISplitViewControllerDelegate>

@end

@implementation PhotoDetailViewController
@synthesize scrollViewWithImage;
@synthesize imageView;
@synthesize imageURL;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

//load the image from Flickr
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSData *data = [NSData dataWithContentsOfURL:imageURL];
    UIImage *image = [UIImage imageWithData:data];
    self.imageView.image = image;
    
    self.scrollViewWithImage.delegate = self;
    self.splitViewController.delegate = self;
    
    //setting the site of the scrollView to the Size of the image
    self.scrollViewWithImage.contentSize = self.imageView.image.size;
    self.imageView.frame =
        CGRectMake(0, 0, self.imageView.image.size.width, self.imageView.image.size.height);
    
	
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//so the Image can be zoomed
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.imageView;
}

- (void)splitViewController:(UISplitViewController *)svc
     willHideViewController:(UIViewController *)aViewController
          withBarButtonItem:(UIBarButtonItem *)barButtonItem
       forPopoverController:(UIPopoverController *)pc {
}

@end
