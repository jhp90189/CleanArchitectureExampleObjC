//
//  MockArticleProvider.m
//  CleanArchitectureExampleObjCTests
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 lbabovic. All rights reserved.
//

#import "MockArticleProvider.h"
#import "Article.h"

@implementation MockArticleProvider

- (void)fetchArticles:(ResponseBlock)completion { 
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"NewResponseMockData" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    NSArray* articles = [json objectForKey:@"articles"];
    NSMutableArray *arrayToReturn = [NSMutableArray new];
    for(NSDictionary* obj in articles) {
        @try {
            Class classToDecode = [NSObject<Article> class];
            [arrayToReturn addObject:[[classToDecode alloc] initWithJSONData:obj]];
            completion([[Response alloc] initWithSuccess:arrayToReturn]);
        }
        @catch (NSException *exception) {
            completion([[Response alloc] initWithCustomError:DECODING_ERROR]);
            return;
        }
    }
}

@end
