//
//  DecodingClass.h
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//
#import <Foundation/Foundation.h>

@protocol Decodable <NSObject>

@required
-(instancetype)initWithJSONData: (NSObject*) jsonResponseObject;

@end
