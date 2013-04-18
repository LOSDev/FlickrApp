//
//  PhotoDetailViewController.h
//  FlickerApp
//
//  Created by Rincewind on 17.01.13.
//  Copyright (c) 2013 Rincewind. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoDetailViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIScrollView *scrollViewWithImage;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property NSURL *imageURL;

@end
