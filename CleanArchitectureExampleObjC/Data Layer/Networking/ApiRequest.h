//
//  ApiRequest.h
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Endpoint.h"

@interface ApiRequest : NSObject

-(instancetype)init:(EndpointEnum)endpointEnum;
-(NSURLRequest*)urlRequest;

@end
