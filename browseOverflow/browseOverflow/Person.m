//
//  Person.m
//  browseOverflow
//
//  Created by Todd Pickell on 2/3/13.
//  Copyright (c) 2013 Todd Pickell. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize name;
@synthesize avatarURL;

- (id) initWithName: (NSString *)newName avatarLocation: (NSString *)newUrl
{
    if ((self = [super init])) {
        name = [newName copy];
        avatarURL = [[NSURL alloc] initWithString: newUrl];
    }
    return self;
}

@end
