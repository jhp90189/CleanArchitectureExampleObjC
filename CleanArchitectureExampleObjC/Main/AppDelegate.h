//
//  AppDelegate.h
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppCoordinator.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (retain) AppCoordinator* appCoord;

@end

