//
//  ViewControllerDataSource.h
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewControllerDependencies.h"
#import "ArticleTableViewCell.h"
#import "DataSourceUpdateFeedback.h"

@interface ViewControllerDataSource: NSObject <UITableViewDataSource>

-(instancetype)init: (id<ViewControllerDependencies>) dependencies;
-(void)fetchData;
@property (strong, nonatomic) id<DataSourceUpdateFeedback> feedback;

@end
