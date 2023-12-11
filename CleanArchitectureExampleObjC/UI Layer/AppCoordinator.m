//
//  AppCoordinator.m
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//

#import "AppCoordinator.h"
#import "ViewController.h"
#import "AppDependenciesContainer.h"
#import "DetailViewController.h"
@interface AppCoordinator()

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UINavigationController *navController;
@property (strong, nonatomic) AppDependenciesContainer *dependencies;

@end

@implementation AppCoordinator
@synthesize window;
@synthesize dependencies;
@synthesize navController;

- (instancetype)init {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.dependencies = [[AppDependenciesContainer alloc] init];
    return self;
}

- (void) start {
    ViewController *vc = [[ViewController alloc] init:[[ViewControllerDataSource alloc] init:dependencies]];
    navController = [[UINavigationController alloc] initWithRootViewController:vc];
    self.window.rootViewController = navController;
    [self.window makeKeyAndVisible];
    return;
}

- (void)navigateToDetailScreen:(NSObject<Article>*) article {
    DetailViewController *detailVC = [[DetailViewController alloc] init];
    detailVC.article = article;
    [navController pushViewController:detailVC animated:true];
}

@end
