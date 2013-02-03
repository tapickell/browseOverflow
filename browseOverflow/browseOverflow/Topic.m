//
//  Topic.m
//  browseOverflow
//
//  Created by Todd Pickell on 2/2/13.
//  Copyright (c) 2013 Todd Pickell. All rights reserved.
//

#import "Topic.h"

@implementation Topic

@synthesize name;
@synthesize tag;

- (id)initWithName:(NSString*)newName tag:(NSString*)newTag
{
    if ((self = [super init])) {
        name = [newName copy];
        tag = [newTag copy];
    }
    return self;
}

- (NSArray *) recentQuestions
{
    return [NSArray array];
}

@end
