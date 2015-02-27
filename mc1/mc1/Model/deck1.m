//
//  deck.m
//  mc1
//
//  Created by Yang Sun on 2/21/15.
//  Copyright (c) 2015 StartUp1. All rights reserved.
//

#import "deck1.h"

@interface deck1()
@property (strong, nonatomic) NSMutableArray *cards;
@end

@implementation deck1

- (NSMutableArray *)cards
{
    if (!_cards) {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

- (void)addCard: (card *)card atTop:(BOOL)atTop
{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    }
    else {
        [self.cards addObject:card];
    }
    
}

- (void)addCard: (card *)card
{
    [self addCard:card atTop:NO];
}

- (card *) drawRandomCard
{
    card *rndCard = nil;
    
    unsigned cnt = [self.cards count];
    
    if (cnt) {
        cnt = arc4random() % cnt;
        rndCard = self.cards[cnt];
        [self.cards removeObjectAtIndex:cnt];
    }
    
    return rndCard;
}

@end