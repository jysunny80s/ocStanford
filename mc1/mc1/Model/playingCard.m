//
//  playingCard.m
//  mc1
//
//  Created by Yang Sun on 2/21/15.
//  Copyright (c) 2015 StartUp1. All rights reserved.
//
# import "playingCard.h"

@interface playingCard()

@end


@implementation playingCard

- (NSString *) contents
{
    NSArray *rankStr = [playingCard rankStrings];
    
    return [rankStr[self.rank] stringByAppendingString:self.suit];
}

+ (NSArray *) validSuits
{
    return @[@"♥️",@"♦️",@"♠️",@"♣️"];
}

+ (NSArray *)rankStrings
{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+ (NSUInteger) maxRank
{
    return [[playingCard rankStrings] count] -1;
}

@synthesize suit = _suit;

- (void)setSuit:(NSString *)suit
{
    if([ [playingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *) suit
{
    return _suit ? _suit : @"?";
}

- (void) setRank:(NSUInteger)rank
{
    if (rank < [playingCard maxRank]) {
        _rank = rank;
    }
}

@end
