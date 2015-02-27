//
//  playingCard.h
//  mc1
//
//  Created by Yang Sun on 2/21/15.
//  Copyright (c) 2015 StartUp1. All rights reserved.
//

#ifndef mc1_playingCard_h
#define mc1_playingCard_h
#import <Foundation/Foundation.h>
# import "card.h"

@interface playingCard : card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;


+ (NSArray *) validSuits;
+ (NSUInteger) maxRank;

@end

#endif
