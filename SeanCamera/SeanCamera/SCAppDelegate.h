//
//  SCAppDelegate.h
//  SeanCamera
//
//  Created by Carl Sjogreen on 6/27/13.
//  Copyright (c) 2013 Carl Sjogreen. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SCViewController;

@interface SCAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) SCViewController *viewController;

@end
