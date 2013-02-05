//
//  answerTests.m
//  browseOverflow
//
//  Created by Todd Pickell on 2/4/13.
//  Copyright (c) 2013 Todd Pickell. All rights reserved.
//

#import "Answer.h"
#import "Person.h"
#import "answerTests.h"

@implementation answerTests

- (void) setUp
{
    answer = [[Answer alloc] init];
    answer.text = @"The answer is 42";
    answer.person = [[Person alloc] initWithName: @"Graham Lee" avatarLocation: @"http://example.com/avatar.png"];
    answer.score = 42;
}

- (void) testAnswerHasSomeText
{
    STAssertEqualObjects(answer.text, @"The answer is 42", @"Answers need to contain some text");
}

- (void) testSomeoneProvidedTheAnswer
{
    STAssertTrue([answer.person isKindOfClass: [Person class]], @"A person gave this answer");
}

- (void) testAnswersNotAcceptedByDefault
{
    STAssertFalse(answer.accepted, @"Answer not accepted by default");
}

- (void) testAnswerCanBeAccepted
{
    STAssertNoThrow(answer.accepted = YES, @"It is possible to accept an answer");
}

- (void) testAnswerHasAScore
{
    STAssertTrue(answer.score == 42, @"Answer's score can be retrieved");
}

- (void) tearDown
{
    answer = nil;
}

@end
