//
//  MockAppDependeciesContainer.h
//  CleanArchitectureExampleObjCTests
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 lbabovic. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ViewControllerDependencies.h"
#import "ArticleInteractor.h"
#import "MockArticleProvider.h"

@interface MockAppDependeciesContainer : NSObject<ViewControllerDependencies>

@end

