//
//  NetworkController.m
//  MemoryManagement
//
//  Created by Ivan Lesko on 2/13/14.
//  Copyright (c) 2014 Ivan Lesko. All rights reserved.
//

#import "NetworkController.h"

@implementation NetworkController

- (void)downloadPictureWithCompletion:(void (^)(UIImage *image))completionBlock downloadAnotherImage:(void (^)(UIImage *secondImage, BOOL error))secondCompletionBlock {
    NSOperationQueue *newQueue = [NSOperationQueue new];
    newQueue.maxConcurrentOperationCount = 1;
    
    NSURL *philosoURL = [NSURL URLWithString:@"http://cliff.hostkansas.com/images/2012/123111_philosoraptor_song_t.jpg"];
    [newQueue addOperationWithBlock:^{
        NSData *philosoData = [NSData dataWithContentsOfURL:philosoURL];
        if (philosoData) {
            UIImage *philosoImage = [UIImage imageWithData:philosoData];
            secondCompletionBlock(philosoImage, NO);
        } else {
            secondCompletionBlock(nil, YES);
        }
        
    }];
    
    NSURL *tURL = [NSURL URLWithString:@"http://scope.uiowa.edu/assets/Uploads/t-pain-hat2.jpg"];
    [newQueue addOperationWithBlock:^{
        NSData *tPainData = [NSData dataWithContentsOfURL:tURL];
        UIImage *shawty = [UIImage imageWithData:tPainData];
        
        completionBlock(shawty);
    }];
    
}

@end
