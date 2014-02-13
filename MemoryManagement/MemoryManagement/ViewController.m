//
//  ViewController.m
//  MemoryManagement
//
//  Created by Ivan Lesko on 2/13/14.
//  Copyright (c) 2014 Ivan Lesko. All rights reserved.
//


#import "ViewController.h"




@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    const int count = 8;
    
    char *charData;
    
    charData = (char *)calloc(count, sizeof(char));
    
    for (int i = 0; i < 8; i++) {
        strcpy(&charData[i], "a");
        printf("%s", &charData[i]);
    }
    
    
    printf("\n");
    
    for (int i = 0; i < 8; i++) {
        strcpy(&charData[i], "b");
        printf("%s", &charData[i]);
    }
    
    free(charData);
    
    NewObject *testObject = [[NewObject alloc] init];
    [testObject callBlock];
    
    self.networkController = [[NetworkController alloc] init];
    
    [self.networkController downloadPictureWithCompletion:^(UIImage *image) {
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            self.tPAINImageView.image = image;
        }];
    } downloadAnotherImage:^(UIImage *secondImage, BOOL error) {
        if (error) {
            NSLog(@"error!!!! no image");
        } else {
            [[NSOperationQueue mainQueue] addOperationWithBlock:^{
                self.tPAINImageView.image = secondImage;
            }];            
        }
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
