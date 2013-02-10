//
//  StackOverflowManagerTests.m
//  browseOverflow
//
//  Created by Todd Pickell on 2/5/13.
//  Copyright (c) 2013 Todd Pickell. All rights reserved.
//

#import "Topic.h"
#import "QuestionCreationTests.h"
#import "StackOverflowManager.h"
#import "MockStackOverflowManagerDelegate.h"
#import "MockStackOverflowCommunicator.h"


@implementation QuestionCreationTests {

    @private StackOverflowManager *mgr;
}

- (void) setUp
{
    mgr = [[StackOverflowManager alloc] init];
}

- (void) testNonConformingObjectCannotBeDelegate
{
    STAssertThrows(mgr.delegate = (id <StackOverflowManagerDelegate>) [NSNull null], @"NSNull should not be used as the delegate as doesnt conform to the delegate protocol");
}

- (void) testConformingObjectCanBeDelegate
{
    id <StackOverflowManagerDelegate> delegate = [[MockStackOverflowManagerDelegate alloc] init];
    STAssertNoThrow(mgr.delegate = delegate, @"Object conforming to the delagate protocol should be used as the delegate");
}

- (void) testManagerAcceptsNilAsADelegate
{
    STAssertNoThrow(mgr.delegate = nil, @"It shouuld be acceptable to use nil as an object's delegate");
}

- (void) testAskingForQuestionsMeansRequestingData
{
    MockStackOverflowManagerDelegate *communicator = [[MockStackOverflowCommunicator alloc] init];
    mgr.communicator = communicator;
    Topic *topic = [[Topic alloc] initWithName: @"iPhone" tag: @"iphone"];
    [mgr fetchQuestionsOnTopic: topic];
    STAssertTrue([communicator wasAskedToFetchQuestions], @"The communicator should need to fetch data");
}

- (void) tearDown
{
    mgr = nil;
}

@end
