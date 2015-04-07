//
//  NewInstrument.m
//  FirstInstrumentTutorial
//
//  Created by Nicholas Arner on 4/7/15.
//  Copyright (c) 2015 AudioKit. All rights reserved.
//

#import "NewInstrument.h"



@implementation NewInstrument

- (instancetype)init
{
    self = [super init];
    if (self) {

        AKFMOscillator *fmOscillator;
        fmOscillator = [[AKFMOscillator alloc] init];
        [self setAudioOutput:fmOscillator];

    }
    return self;
}
@end
