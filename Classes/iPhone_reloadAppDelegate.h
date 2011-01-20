//
//  iPhone_reloadAppDelegate.h
//  iPhone-reload
//
//  Created by cherenkov on 11/01/21.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class iPhone_reloadViewController;

@interface iPhone_reloadAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    iPhone_reloadViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet iPhone_reloadViewController *viewController;

@end

