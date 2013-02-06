//
//  StackOverflowManagerTests.m
//  browseOverflow
//
//  Created by Todd Pickell on 2/5/13.
//  Copyright (c) 2013 Todd Pickell. All rights reserved.
//

#import "QuestionCreationTests.h"

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

- (void) tearDown
{
    mgr = nil;
}

@end
