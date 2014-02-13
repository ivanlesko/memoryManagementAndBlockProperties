//
//  NewObject.h
//  MemoryManagement
//
//  Created by Ivan Lesko on 2/13/14.
//  Copyright (c) 2014 Ivan Lesko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewObject : NSObject

@property (nonatomic, copy) void (^objectBlock)(void);

- (void)callBlock;

@end
