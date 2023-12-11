//
//  CharacterInteractor.h
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArticleProvider.h"
#import "ArticleUseCase.h"

@interface ArticleInteractor : NSObject <ArticleUseCase>

-(instancetype)initWithProvider: (id<ArticleProvider>) provider;

@end
