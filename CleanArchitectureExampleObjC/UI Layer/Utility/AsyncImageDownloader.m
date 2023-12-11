//
//  AsyncImageDownloader.m
//  CleanArchitectureExampleObjC
//
//  Created by Jainesh Patel on 11/12/23.
//  Copyright © 2023 Jainesh. All rights reserved.
//

#import "AsyncImageDownloader.h"
@implementation AsyncImageDownloader

@synthesize mediaURL, fileURL;

-(id)initWithMediaURL:(NSString *)theMediaURL successBlock:(void (^)(UIImage *image))success failBlock:(void(^)(NSError *error))fail
{
    self = [super init];
    
    if(self)
    {
        [self setMediaURL:theMediaURL];
        [self setFileURL:nil];
        successCallback = success;
        failCallback = fail;
    }
    
    return self;
}
-(id)initWithFileURL:(NSString *)theFileURL successBlock:(void (^)(NSData *data))success failBlock:(void(^)(NSError *error))fail
{
    self = [super init];
    
    if(self)
    {
        [self setMediaURL:nil];
        [self setFileURL:theFileURL];
        successCallbackFile = success;
        failCallback = fail;
    }
    
    return self;
}

//Perform the actual download
-(void)startDownload
{
    fileData = [[NSMutableData alloc] init];
    
    NSURLRequest *request = nil;
    if (fileURL)
        request = [NSURLRequest requestWithURL:[NSURL URLWithString:fileURL]];
    else
        request = [NSURLRequest requestWithURL:[NSURL URLWithString:mediaURL]];
    [[[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
            if (error != nil) {
                self->failCallback(error);
            } else if (data != nil) {
                dispatch_async(dispatch_get_main_queue(), ^{
                    UIImage *image = [UIImage imageWithData:data];
                    self->successCallback(image);
                });
            }
        }] resume];
}

@end
