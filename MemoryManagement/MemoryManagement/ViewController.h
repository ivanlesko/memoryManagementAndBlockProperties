//
//  ViewController.h
//  MemoryManagement
//
//  Created by Ivan Lesko on 2/13/14.
//  Copyright (c) 2014 Ivan Lesko. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "NewObject.h"
#import "NetworkController.h"

@interface ViewController : UIViewController

@property (nonatomic, strong) NetworkController *networkController;

@property (weak, nonatomic) IBOutlet UIImageView *tPAINImageView;


@end
