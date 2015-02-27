//
//  ViewController.m
//  mc1
//
//  Created by Yang Sun on 2/17/15.
//  Copyright (c) 2015 StartUp1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLable;
@property (nonatomic) int flipCount;
@end

@implementation ViewController

- (void) setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    self.flipsLable.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    NSLog(@"flipCount changed to %d", self.flipCount);
}

- (IBAction)touchCardBtn:(UIButton *)sender {
    
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardBack"]
                      forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    else {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardFront"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"A♣️" forState:UIControlStateNormal];
    }
    self.flipCount++;
    
}


@end
