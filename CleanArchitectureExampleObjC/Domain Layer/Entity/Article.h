//
//  Character.h
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Article <NSObject>

@required
@property (readwrite) NSString* title;
@required
@property (readwrite) NSString* articleDescription;
@required
@property (readwrite) NSString* url;
@required
@property (readwrite) NSString* urlToImage;
@required
@property (readwrite) NSString* publishedAt;
@required
@property (readwrite) NSString* content;
@end
