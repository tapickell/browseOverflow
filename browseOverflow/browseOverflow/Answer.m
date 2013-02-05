//
//  Answer.m
//  browseOverflow
//
//  Created by Todd Pickell on 2/4/13.
//  Copyright (c) 2013 Todd Pickell. All rights reserved.
//

#import "Answer.h"

@implementation Answer

@synthesize text;
@synthesize person;
@synthesize score;
@synthesize accepted;

- (NSComparisonResult) compare:(Answer *) otherAnswer
{
    if (accepted && !(otherAnswer.accepted)) {
        return NSOrderedAscending;
    } else if (!accepted && otherAnswer.accepted) {
        return NSOrderedDescending;
    }
    if (score > otherAnswer.score) {
        return NSOrderedAscending;
    } else if (score < otherAnswer.score) {
        return NSOrderedDescending;
    } else {
        return NSOrderedSame;
    }
}

@end
