//
//  AsyncImageDownloader.h
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 lbabovic. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AsyncImageDownloader : NSObject <NSURLConnectionDelegate>
{
    NSMutableData *fileData;
    
    //Callback blocks
    void (^successCallbackFile)(NSData *data);
    void (^successCallback)(UIImage *image);
    void (^failCallback)(NSError *error);
}

@property NSString *mediaURL;
@property NSString *fileURL;

-(id)initWithMediaURL:(NSString *)theMediaURL successBlock:(void (^)(UIImage *image))success failBlock:(void(^)(NSError *error))fail;

-(id)initWithFileURL:(NSString *)theFileURL successBlock:(void (^)(NSData *data))success failBlock:(void(^)(NSError *error))fail;

-(void)startDownload;

@end
