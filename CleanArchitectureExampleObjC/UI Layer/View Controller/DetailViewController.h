//
//  DetailViewController.h
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 lbabovic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Article.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSObject<Article>* article;
@end
