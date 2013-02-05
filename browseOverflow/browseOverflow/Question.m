//
//  Question.m
//  browseOverflow
//
//  Created by Todd Pickell on 2/3/13.
//  Copyright (c) 2013 Todd Pickell. All rights reserved.
//

#import "Question.h"
#import "Answer.h"

@implementation Question

@synthesize title;
@synthesize score;
@synthesize date;

- (id) init
{
    if ((self = [super init])) {
        answerSet = [[NSMutableSet alloc] init];
    }
    return self;
}

- (void) addAnswer: (Answer *)answer
{
    [answerSet addObject: answer];
}

- (NSArray *) answers
{
    return [[answerSet allObjects] sortedArrayUsingSelector:@selector(compare:)];
}

@end
