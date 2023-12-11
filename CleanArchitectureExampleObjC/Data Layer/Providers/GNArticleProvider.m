//
//  RickAndMortyCharacterProvider.m
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//

#import "GNArticleProvider.h"

@interface GNArticleProvider()

@property (retain, nonatomic) WebService* webService;

@end

@implementation GNArticleProvider

- (instancetype)init
{
    self = [super init];

    if (self) {
        self.webService = [[WebService alloc] init];
    }
    return self;
}

- (void)fetchArticles:(ResponseBlock)completion {
    NSURLRequest* request = [[[ApiRequest alloc] init:fetchArticles] urlRequest];
    if (!request){completion([[Response alloc] initWithCustomError:AMBIGOUS_ERROR]);return;};    
    [self.webService executeRequest:request withClass:ArticleResponse.class completion:^(Response* response) {
        switch (response.responseType) {
            case success:
                completion([[Response alloc] initWithSuccess:response.responseData]);
                break;
            case error:
                completion([[Response alloc] initWithError:response.responseError]);
                break;
        }
    }];
}

@end
