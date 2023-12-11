//
//  WebServiceError.m
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//

#import "WebServiceError.h"

@interface WebServiceError()

@end

@implementation WebServiceError

- (instancetype)init:(ErrorEnum)errorEnum {
    self.errorEnum = errorEnum;
    return self;
}

@end
