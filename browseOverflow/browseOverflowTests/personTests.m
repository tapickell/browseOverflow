//
//  personTests.m
//  browseOverflow
//
//  Created by Todd Pickell on 2/3/13.
//  Copyright (c) 2013 Todd Pickell. All rights reserved.
//

#import "Person.h"
#import "personTests.h"

@implementation personTests

- (void) setUp
{
    person = [[Person alloc] initWithName: @"Graham Lee" avatarLocation: @"http://example.com/avatar.png"];
}

- (void) testThatPersonHasTheRightName
{
    STAssertEqualObjects(person.name, @"Graham Lee", @"expecting person to provide its name");
}

- (void) testThatPersonHasAnAvatarURL
{
    NSURL *url = person.avatarURL;
    STAssertEqualObjects([url absoluteString], @"http://example.com/avatar.png", @"The persons avatar should be represented by a URL");
}

- (void) tearDown
{
    person = nil;
}

@end
