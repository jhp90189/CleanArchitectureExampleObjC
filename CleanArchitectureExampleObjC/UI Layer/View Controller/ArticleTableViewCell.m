//
//  CharacterTableViewCell.m
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//

#import "ArticleTableViewCell.h"
#import "Article.h"
#import "AsyncImageDownloader.h"

@interface ArticleTableViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *articleImageView;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *publishedDate;
@property (weak, nonatomic) IBOutlet UILabel *articleDescription;


@end

@implementation ArticleTableViewCell

@synthesize articleImageView;
@synthesize title;
@synthesize publishedDate;
@synthesize articleDescription;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

- (void)setUpCellWithArticle: (NSObject *) article {
    if (![article conformsToProtocol:@protocol(Article)]) {
        NSLog(@"CharacterTableViewCell can only be set up using a Character class object!");
        return;
    }
    NSObject<Article> *articleObject = (NSObject<Article> *) article;
    title.text = articleObject.title;
    publishedDate.text = articleObject.publishedAt;
    articleDescription.text = (articleObject.articleDescription != nil) ? articleObject.articleDescription : @"";
    if (articleObject.urlToImage != NULL) {
        articleImageView.image = [UIImage imageNamed:@"default"];
        typeof(self) __weak weakSelf = self;
        [[[AsyncImageDownloader alloc] initWithMediaURL:articleObject.urlToImage successBlock:^(UIImage *image)  {
              [weakSelf.articleImageView setImage:image];
        } failBlock:^(NSError *error) {
              NSLog(@"Failed to download image due to %@!", error);
        }] startDownload];
    }
}

@end
