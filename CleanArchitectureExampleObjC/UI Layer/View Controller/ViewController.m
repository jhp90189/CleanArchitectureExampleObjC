//
//  ViewController.m
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController()

@property (strong, nonatomic) ViewControllerDataSource* dataSource;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
- (void) setUpTableView;

@end

@implementation ViewController
@synthesize dataSource;
@synthesize tableView;
@synthesize isArticleLoadedSuccessfully;
- (instancetype)init:(ViewControllerDataSource*)dataSource {
    self = [super initWithNibName:nil bundle: nil];
    self.dataSource = dataSource;
    [self.dataSource setFeedback:self];
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpTableView];
    self.title = @"News";
    NSLog(@"%@", dataSource);
    [dataSource fetchData];
}

- (void)setUpTableView {
    [self.tableView registerNib:[UINib nibWithNibName:@"ArticleTableViewCell" bundle:nil] forCellReuseIdentifier:@"articleCell"];
    tableView.dataSource = dataSource;
    tableView.delegate = dataSource;
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}

- (void)dataSourceUpdated {
    isArticleLoadedSuccessfully = true;
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.tableView reloadData];
    });
}

@end
