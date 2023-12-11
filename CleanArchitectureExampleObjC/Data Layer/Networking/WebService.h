//
//  WebService.h
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "Response.h"
#import "NetworkSession.h"
#import "ApiRequest.h"

@interface WebService: NSObject

-(void) executeRequest: (NSURLRequest*) urlRequest withClass:(Class) classToDecode completion:(void ((^)(Response*)))callback;
-(void) cancelCurrentTask;

@end
