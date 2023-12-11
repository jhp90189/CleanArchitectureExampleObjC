//
//  ViewController.h
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewControllerDataSource.h"

@interface ViewController: UIViewController <DataSourceUpdateFeedback, UITableViewDelegate>

@property(nonatomic) BOOL isArticleLoadedSuccessfully;
-(instancetype)init: (ViewControllerDataSource*) dataSource;

@end

