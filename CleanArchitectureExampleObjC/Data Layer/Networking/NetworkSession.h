//
//  NetworkSession.h
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkSession: NSObject

-(instancetype)init;
-(instancetype)init:(double*) timeoutValue;
-(void) performRequest: (NSURLRequest*) request withCompletionBlock:(void ((^)( NSData*, NSURLResponse*, NSError* )))completionBlock;
-(void) cancelTask;

@end
