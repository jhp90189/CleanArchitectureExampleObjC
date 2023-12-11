//
//  Endpoint.h
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//
#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, EndpointEnum) {
    fetchArticles
};

@interface Endpoint : NSObject

-(instancetype)init:(EndpointEnum)endpointEnum;
-(NSString*)path;
-(NSString*)parameters;

@end
