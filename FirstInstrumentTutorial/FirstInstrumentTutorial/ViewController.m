//
//  ViewController.m
//  FirstInstrumentTutorial
//
//  Created by Nicholas Arner on 4/7/15.
//  Copyright (c) 2015 AudioKit. All rights reserved.
//

#import "ViewController.h"
#import "AKFoundation.h"
#import "NewInstrument.h"


@implementation ViewController {
    NewInstrument *newInstrument;
    BOOL isNewInstrumentPlaying;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    newInstrument = [[NewInstrument alloc] init];
    [AKOrchestra addInstrument:newInstrument];
}


- (IBAction)toggleAction:(id)sender {
    if (isNewInstrumentPlaying) {
        [newInstrument stop];
        isNewInstrumentPlaying = NO;
    } else {
        [newInstrument play];
        isNewInstrumentPlaying = YES;
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
