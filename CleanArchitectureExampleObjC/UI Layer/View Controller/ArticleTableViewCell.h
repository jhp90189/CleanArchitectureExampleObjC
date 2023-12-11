//
//  CharacterTableViewCell.h
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ArticleTableViewCell : UITableViewCell

- (void)setUpCellWithArticle: (NSObject *) article;

@end

NS_ASSUME_NONNULL_END
