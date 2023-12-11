//
//  CharacterResponse.m
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//

#import "ArticleResponse.h"

@interface ArticleResponse()

@end

@implementation ArticleResponse
@synthesize title;
@synthesize articleDescription;
@synthesize url;
@synthesize urlToImage;
@synthesize publishedAt;
@synthesize content;

- (instancetype)initWithJSONData:(NSDictionary *)jsonResponseObject {
    self.title = [NSString stringWithFormat:@"%@", jsonResponseObject[@"title"]];
    self.articleDescription = [NSString stringWithFormat:@"%@", jsonResponseObject[@"description"]];
    self.url = [NSString stringWithFormat:@"%@", jsonResponseObject[@"url"]];
    self.urlToImage = [NSString stringWithFormat:@"%@", jsonResponseObject[@"urlToImage"]];
    self.publishedAt = [NSString stringWithFormat:@"%@", jsonResponseObject[@"publishedAt"]];
    self.content = [NSString stringWithFormat:@"%@", jsonResponseObject[@"content"]];
    return self;
}

@end
