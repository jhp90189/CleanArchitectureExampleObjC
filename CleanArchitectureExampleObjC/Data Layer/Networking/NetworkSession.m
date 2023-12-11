//
//  NetworkSession.m
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//

#import "NetworkSession.h"

@interface NetworkSession()

@property (retain, nonatomic) NSURLSession* urlSession;
@property (retain, nonatomic) NSURLSessionTask* currentTask;

@end

@implementation NetworkSession

- (instancetype)init
{
    self = [super init];
    self.urlSession = [NSURLSession sessionWithConfiguration:NSURLSessionConfiguration.defaultSessionConfiguration];
    return self;
}

- (instancetype)init:(double *)timeoutValue {
    NSURLSessionConfiguration* sessionConfig = NSURLSessionConfiguration.defaultSessionConfiguration;
    sessionConfig.timeoutIntervalForRequest = *(timeoutValue);
    self.urlSession = [NSURLSession sessionWithConfiguration: sessionConfig];
    return self;
}

- (void)performRequest:(NSURLRequest *)request withCompletionBlock:(void ((^)(NSData *, NSURLResponse *, NSError *)))completionBlock {
    self.currentTask = [self.urlSession dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error){
        completionBlock(data, response, error);
    }];
    [self.currentTask resume];
}

- (void)cancelTask {
    [self.currentTask cancel];
}

@end
