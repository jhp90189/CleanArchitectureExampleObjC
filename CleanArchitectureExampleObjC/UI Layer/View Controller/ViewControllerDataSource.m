//
//  ViewControllerDataSource.m
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//

#import "ViewControllerDataSource.h"
#import "AppDelegate.h"

@interface ViewControllerDataSource()

@property (weak, nonatomic) id<ViewControllerDependencies> dependencies;
@property (retain, nonatomic) NSArray* articles;
- (void) fetchData;

@end

@implementation ViewControllerDataSource

@synthesize articles;
@synthesize feedback;

- (instancetype)init:(id<ViewControllerDependencies>)dependencies {
    self = [super init];
    self.dependencies = dependencies;
    return self;
}

- (void)fetchData {
    [[self.dependencies getArticleUseCase] fetchArticles:^(Response* response) {
        switch (response.responseType) {
            case success:
                self.articles = [[NSArray alloc] initWithArray:(NSArray*) response.responseData];
                if (self.feedback) {[self.feedback dataSourceUpdated];};
                break;
            case error:
                NSLog(@"%@", response.responseError);
                break;
        }
    }];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    ArticleTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"articleCell" forIndexPath:indexPath];
    [cell setUpCellWithArticle:[articles objectAtIndex:indexPath.row]];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return articles.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    AppDelegate* delegate = (AppDelegate *) [UIApplication sharedApplication].delegate;
    [delegate.appCoord navigateToDetailScreen:articles[indexPath.row]];
}

@end
