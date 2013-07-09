//
//  SCViewController.h
//  SeanCamera
//
//  Created by Carl Sjogreen on 6/27/13.
//  Copyright (c) 2013 Carl Sjogreen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SCViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property UIImageView *previewImage;

@end
