//
//  topicTests.m
//  browseOverflow
//
//  Created by Todd Pickell on 2/2/13.
//  Copyright (c) 2013 Todd Pickell. All rights reserved.
//

#import "Topic.h"
#import "topicTests.h"

@implementation topicTests

- (void) setUp
{
    topic = [[Topic alloc] initWithName:@"iPhone" tag: @"iphone"];
}

- (void) testThatTopicExists
{
    
    STAssertNotNil(topic, @"Should be able to create a topic instance");
}

- (void) testThatTopicCanBeNamed
{
    STAssertEqualObjects(topic.name, @"iPhone", @"the Topic should have the name assigned to it");
}

- (void) testThatTopicHasATag
{
    
    STAssertEqualObjects(topic.tag, @"iphone", @"Topics need to have tags");
}

- (void) testForAListOfQuestions
{
    STAssertTrue([[topic recentQuestions] isKindOfClass:[NSArray class]], @"Topics should provide a list of recent questions");
}

- (void) tearDown
{
    topic = nil;
}

@end
