//
//  card.m
//  mc1
//
//  Created by Yang Sun on 2/21/15.
//  Copyright (c) 2015 StartUp1. All rights reserved.
//

#import "card.h"

@interface card()

@end

@implementation card

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for (card *cardPtr in otherCards) {
        if ([cardPtr.contents isEqual:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}

@end