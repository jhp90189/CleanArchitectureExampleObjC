//
//  CharacterResponse.h
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//

#import "Article.h"
#import "Decodable.h"
#import <Foundation/Foundation.h>

@interface ArticleResponse: NSObject <Article, Decodable>

@end
