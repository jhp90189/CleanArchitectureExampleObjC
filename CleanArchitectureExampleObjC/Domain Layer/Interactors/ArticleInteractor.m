//
//  CharacterInteractor.m
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//

#import "ArticleInteractor.h"

@interface ArticleInteractor()

@property (retain, nonatomic) id<ArticleProvider> provider;

@end

@implementation ArticleInteractor

- (instancetype)initWithProvider:(id<ArticleProvider>)provider {
    self.provider = provider;
    return self;
}

- (void)fetchArticles:(ResponseBlock)completion {
    [self.provider fetchArticles:completion];
}

@end
