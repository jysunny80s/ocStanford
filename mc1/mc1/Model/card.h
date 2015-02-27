//
//  card.h
//  mc1
//
//  Created by Yang Sun on 2/21/15.
//  Copyright (c) 2015 StartUp1. All rights reserved.
//

#ifndef mc1_card_h
#define mc1_card_h
#import <Foundation/Foundation.h>

@interface card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter = isSelected) BOOL fSelected;
@property (nonatomic, getter = isMacthed) BOOL fMatched;


@end

#endif
