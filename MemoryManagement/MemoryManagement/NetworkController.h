//
//  NetworkController.h
//  MemoryManagement
//
//  Created by Ivan Lesko on 2/13/14.
//  Copyright (c) 2014 Ivan Lesko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkController : NSObject

- (void)downloadPictureWithCompletion:(void (^)(UIImage *image))completionBlock downloadAnotherImage:(void (^)(UIImage *secondImage, BOOL error))secondCompletionBlock;

@end
