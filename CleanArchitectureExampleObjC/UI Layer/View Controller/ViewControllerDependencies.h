//
//  ViewControllerDependencies.h
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArticleUseCase.h"
#import "Article.h"
#import "DataSourceUpdateFeedback.h"

@protocol ViewControllerDependencies <NSObject>

@required
-(id<ArticleUseCase>) getArticleUseCase;

@end
