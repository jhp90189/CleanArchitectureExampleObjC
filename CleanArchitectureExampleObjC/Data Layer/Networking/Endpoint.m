//
//  Endpoint.m
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//

#import "Endpoint.h"

@interface Endpoint()

@property (nonatomic, assign) EndpointEnum endpoint;

@end
@implementation Endpoint

- (instancetype)init:(EndpointEnum)endpointEnum {
    self.endpoint = endpointEnum;
    return self;
}

- (NSString *)path {
    switch (self.endpoint) {
        case fetchArticles:
            return @"v2/everything";
        default:
            return @"";
    }
}

- (NSString *)parameters {
    switch (self.endpoint) {
        case fetchArticles:
            return @"?q=tesla&from=2023-11-11&sortBy=publishedAt&apiKey=409bb29ce6b340b09012703635fdab8f";
        default:
            return @"";
    }
}

@end
