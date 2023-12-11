//
//  AppCoordinator.h
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Article.h"

@interface AppCoordinator: NSObject

-(instancetype)init;
-(void) start;
- (void)navigateToDetailScreen:(NSObject<Article>*) article;
@end

