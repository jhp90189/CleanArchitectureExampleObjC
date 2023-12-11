//
//  DetailViewController.m
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 lbabovic. All rights reserved.
//

#import "DetailViewController.h"
#import "AsyncImageDownloader.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentUrl;

@end

@implementation DetailViewController
@synthesize article;
@synthesize imageView;
@synthesize contentLabel;
@synthesize contentUrl;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"Detail";
    [self fillUpDetails];
}

-(void) fillUpDetails {
    contentLabel.text = article.content;
    contentUrl.text = article.url;
    if (article.urlToImage != NULL) {
        typeof(self) __weak weakSelf = self;
        [[[AsyncImageDownloader alloc] initWithMediaURL:article.urlToImage successBlock:^(UIImage *image)  {
              [weakSelf.imageView setImage:image];
        } failBlock:^(NSError *error) {
              NSLog(@"Failed to download image due to %@!", error);
        }] startDownload];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
