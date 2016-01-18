//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"

@interface LPSViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *eyeView;
@property (strong, nonatomic) IBOutlet UIImageView *noseView;
@property (strong, nonatomic) IBOutlet UIImageView *mouthView;
@property (strong, nonatomic) LPSDataStorate *storage;

- (void)displayImages;

@end

@implementation LPSViewController

//all random
- (void)displayRandom {
    
    UIImage *eyeImage = [UIImage imageNamed: self.storage.eyeArray[arc4random_uniform(4)]];
    self.eyeView.image = eyeImage;
    
    UIImage *noseImage = [UIImage imageNamed: self.storage.noseArray[arc4random_uniform(4)]];
    self.noseView.image = noseImage;
    
    UIImage *mouthImage = [UIImage imageNamed: self.storage.mouthArray[arc4random_uniform(4)]];
    self.mouthView.image = mouthImage;
}

// view all
- (void)displayImages {
    
    UIImage *eyeImage = [UIImage imageNamed: self.storage.eyeArray[self.storage.order]];
    self.eyeView.image = eyeImage;
    
    UIImage *noseImage = [UIImage imageNamed: self.storage.noseArray[self.storage.order]];
    self.noseView.image = noseImage;
    
    UIImage *mouthImage = [UIImage imageNamed: self.storage.mouthArray[self.storage.order]];
    self.mouthView.image = mouthImage;
    
}

- (void) displayEyes {
    UIImage *eyeImage = [UIImage imageNamed: self.storage.eyeArray[self.storage.order]];
    self.eyeView.image = eyeImage;
}

- (void) displayNose {
    UIImage *noseImage = [UIImage imageNamed: self.storage.noseArray[self.storage.order]];
    self.noseView.image = noseImage;
}

- (void) displayMouth {
    UIImage *mouthImage = [UIImage imageNamed: self.storage.mouthArray[self.storage.order]];
    self.mouthView.image = mouthImage;
}

- (void) displayOrder {
    self.storage.order = 0;
}


- (void)viewDidLoad {
	
    [super viewDidLoad];
        self.storage = [[LPSDataStorate alloc] init];
}


- (IBAction)eyePrevious:(UIButton *)sender {
    if (self.storage.order == 0) {
        self.storage.order = 4;
    }
    //[self displayOrder];
//    NSLog(@"Button Pressed");
//    NSLog(@"%d",self.storage.order);
    self.storage.order--;
    [self displayEyes];

}
- (IBAction)eyeNext:(UIButton *)sender {
    if (self.storage.order == 4) {
        self.storage.order = 0;
    }
    //[self displayOrder];
//    NSLog(@"Button Pressed");
//    NSLog(@"%d",self.storage.order);
    self.storage.order++;
    
    [self displayEyes];
}
- (IBAction)nosePrevious:(UIButton *)sender {
    if (self.storage.order == 0) {
        self.storage.order = 4;
    }
    //[self displayOrder];
//    NSLog(@"Button Pressed");
//    NSLog(@"%d",self.storage.order);
    self.storage.order--;
    [self displayNose];
    
}
- (IBAction)noseNext:(UIButton *)sender {
    if (self.storage.order == 4) {
        self.storage.order = 0;
    }
    //[self displayOrder];
//    NSLog(@"Button Pressed");
//    NSLog(@"%d",self.storage.order);
    self.storage.order++;
    
    [self displayNose];
}
- (IBAction)mouthPrevious:(UIButton *)sender {
    if (self.storage.order == 0) {
        self.storage.order = 4;
    }
    //[self displayOrder];
//    NSLog(@"Button Pressed");
//    NSLog(@"%d",self.storage.order);
    self.storage.order--;
    [self displayMouth];
    
}
- (IBAction)mouthNext:(UIButton *)sender {
    if (self.storage.order == 4) {
        self.storage.order = 0;
    }
    //[self displayOrder];
//    NSLog(@"Button Pressed");
//    NSLog(@"%d",self.storage.order);
    self.storage.order++;
    
    [self displayMouth];
    

}
- (IBAction)random:(UIButton *)sender {
    [self displayRandom];
}
- (IBAction)whole:(UIButton *)sender {
    //self.storage.order = 0;
    if (self.storage.order == 4) {
        self.storage.order = 0;
    }
    [self displayImages];
    self.storage.order ++;
}
@end
