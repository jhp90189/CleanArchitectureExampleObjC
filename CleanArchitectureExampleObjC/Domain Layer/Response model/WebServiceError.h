//
//  WebServiceError.h
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, ErrorEnum) {
    AMBIGOUS_ERROR, DECODING_ERROR, TIMEOUT_ERROR
};

@interface WebServiceError: NSError

-(instancetype)init:(ErrorEnum)errorEnum;
@property (assign, nonatomic) ErrorEnum errorEnum;

@end
