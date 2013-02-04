//
//  topicTests.m
//  browseOverflow
//
//  Created by Todd Pickell on 2/2/13.
//  Copyright (c) 2013 Todd Pickell. All rights reserved.
//

#import "Topic.h"
#import "Question.h"
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

- (void) testForInitiallyEmptyQuestionList
{
    STAssertEquals([[topic recentQuestions] count], (NSUInteger)0, @"No questions added yet, count should be zero");
}

- (void) testAddingAQuestionToTheList
{
    Question *question = [[Question alloc] init];
    [topic addQuestion: question];
    STAssertEquals([[topic recentQuestions] count], (NSUInteger)1, @"Add a question and the count of questions should go up");
}

- (void) tearDown
{
    topic = nil;
}

@end
