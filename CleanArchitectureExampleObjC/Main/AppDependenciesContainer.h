//
//  AppDependenciesContainer.h
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "ViewControllerDependencies.h"
#import "ArticleInteractor.h"
#import "GNArticleProvider.h"

@interface AppDependenciesContainer : NSObject <ViewControllerDependencies>

@end
