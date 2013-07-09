//
//  SCViewController.m
//  SeanCamera
//
//  Created by Carl Sjogreen on 6/27/13.
//  Copyright (c) 2013 Carl Sjogreen. All rights reserved.
//

#import "SCViewController.h"

@implementation SCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	UIButton *snapButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	
	[snapButton addTarget:self
				   action:@selector(snapTapped)
		 forControlEvents:UIControlEventTouchDown];
	
	[snapButton setTitle:@"Snap" forState:UIControlStateNormal];
	snapButton.frame = CGRectMake(80.0, 410.0, 160.0, 40.0);
	snapButton.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
	[self.view addSubview:snapButton];
	
	CGRect imageFrame = CGRectMake(80.0, 5.0, 160.0, 160.0);
	self.previewImage = [[UIImageView alloc] initWithFrame:imageFrame];
	self.previewImage.contentMode = UIViewContentModeScaleAspectFit;
	self.previewImage.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin |
		UIViewAutoresizingFlexibleLeftMargin |
		UIViewAutoresizingFlexibleRightMargin;
	[self.view addSubview:self.previewImage];
}

- (void)snapTapped
{
    UIImagePickerController *cameraUI = [[UIImagePickerController alloc] init];
    cameraUI.sourceType = UIImagePickerControllerSourceTypeCamera;
	
    cameraUI.allowsEditing = NO;
	
    cameraUI.delegate = self;
	
    [self presentViewController:cameraUI animated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
	UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
	
	self.previewImage.image = image;
	
	[self dismissViewControllerAnimated:YES completion:nil];
}


@end
