//
//  playingCardDeck.m
//  mc1
//
//  Created by Yang Sun on 2/21/15.
//  Copyright (c) 2015 StartUp1. All rights reserved.
//
#import "playingCardDeck.h"

@interface playingCardDeck()


@end

@implementation playingCardDeck

- (instancetype)init
{
    self = [super init];
    if ( self ) {
        for (NSString *suit in [playingCard validSuits]) {
            for (NSUInteger rank = 1; rank < [playingCard maxRank]; rank++) {
                playingCard *card = [[playingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    return self;
}

@end