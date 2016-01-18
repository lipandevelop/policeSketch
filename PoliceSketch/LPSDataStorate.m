//
//  LPSDataStorate.m
//  PoliceSketch
//
//  Created by Li Pan on 2016-01-18.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "LPSDataStorate.h"

@implementation LPSDataStorate

-(instancetype)init {
    self = [super init];
    if (self) {
        _eyeArray = [[NSArray alloc] initWithObjects:@"eyes_1.jpg", @"eyes_2.jpg", @"eyes_3.jpg", @"eyes_4.jpg", @"eyes_5.jpg", nil];
        
        _noseArray = [[NSArray alloc] initWithObjects:@"nose_1.jpg", @"nose_2.jpg", @"nose_3.jpg", @"nose_4.jpg", @"nose_5.jpg",nil];
        
        _mouthArray = [[NSArray alloc] initWithObjects:@"mouth_1.jpg", @"mouth_2.jpg", @"mouth_3.jpg", @"mouth_4.jpg", @"mouth_5.jpg", nil];
        _order = 0;
    }
    return self;
}


@end
