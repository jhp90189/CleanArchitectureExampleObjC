//
//  MockAppDependeciesContainer.m
//  CleanArchitectureExampleObjCTests
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 lbabovic. All rights reserved.
//

#import "MockAppDependeciesContainer.h"

@interface MockAppDependeciesContainer()

@property (retain, nonatomic) id<ArticleUseCase> articleUseCase;
@property (retain, nonatomic) id<ArticleProvider> articleProvider;

@end

@implementation MockAppDependeciesContainer

- (id<ArticleProvider>)articleProvider {
    if (!_articleProvider) {
        self.articleProvider = [[MockArticleProvider alloc] init];
    }
    return _articleProvider;
}

- (id<ArticleUseCase>)articleUseCase {
    if(!_articleProvider) {
        self.articleUseCase = [[ArticleInteractor alloc] initWithProvider:self.articleProvider];
    }
    return _articleUseCase;
}

- (id<ArticleUseCase>)getArticleUseCase {
    return self.articleUseCase;
}

@end
