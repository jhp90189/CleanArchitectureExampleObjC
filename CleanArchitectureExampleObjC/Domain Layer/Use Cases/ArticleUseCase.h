//
//  CharacterUseCase.h
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Response.h"

@protocol ArticleUseCase <NSObject>

@required
-(void) fetchArticles: (ResponseBlock)completion;

@end
