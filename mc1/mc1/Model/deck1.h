//
//  deck1.h
//  mc1
//
//  Created by Yang Sun on 2/21/15.
//  Copyright (c) 2015 StartUp1. All rights reserved.
//

#ifndef mc1_deck1_h
#define mc1_deck1_h
#import <Foundation/Foundation.h>
#import "card.h"

@interface deck1 : NSObject

- (void)addCard: (card *)card atTop:(BOOL)atTop;
- (void)addCard: (card *)card;

- (card *) drawRandomCard;

@end

#endif
