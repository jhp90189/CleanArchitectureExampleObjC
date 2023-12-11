//
//  AppDependenciesContainer.m
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//

#import "AppDependenciesContainer.h"

@interface AppDependenciesContainer()

@property (retain, nonatomic) id<ArticleUseCase> articleUseCase;
@property (retain, nonatomic) id<ArticleProvider> articleProvider;

@end

@implementation AppDependenciesContainer

- (id<ArticleProvider>)articleProvider {
    if (!_articleProvider) {
        self.articleProvider = [[GNArticleProvider alloc] init];
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
