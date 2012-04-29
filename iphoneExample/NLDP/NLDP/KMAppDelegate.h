//
//  KMAppDelegate.h
//  NLDP
//
//  Created by Kevin Musselman on 4/29/12.
//  Copyright (c) 2012 FrenzyLabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@class KMViewController;

@interface KMAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) KMViewController *viewController;

@end
