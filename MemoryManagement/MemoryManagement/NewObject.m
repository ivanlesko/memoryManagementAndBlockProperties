//
//  NewObject.m
//  MemoryManagement
//
//  Created by Ivan Lesko on 2/13/14.
//  Copyright (c) 2014 Ivan Lesko. All rights reserved.
//

#import "NewObject.h"

@implementation NewObject

- (id)init {
    self = [super init];
    if (self) {
        
        __weak NewObject *weakSelf = self;
        self.objectBlock =  ^ {
            [weakSelf printSuccess];
        };
        NSLog(@"initting newObject");
    }
    
    return self;
}

- (void)callBlock {
    NSLog(@"calling callBlock");
    self.objectBlock();
    
}

- (void)printSuccess {
    NSLog(@"SUCCESS!");
}



@end
