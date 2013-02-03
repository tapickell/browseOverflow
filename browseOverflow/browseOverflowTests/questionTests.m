//
//  questionTests.m
//  browseOverflow
//
//  Created by Todd Pickell on 2/3/13.
//  Copyright (c) 2013 Todd Pickell. All rights reserved.
//

#import "Question.h"
#import "questionTests.h"

@implementation questionTests

- (void) setUp
{
    question = [[Question alloc]init];
    question.date = [NSDate distantPast];
    question.title = @"Do iPhones also dream of electric sheep?";
    question.score = 42;
}

- (void) testQuestionHasADate
{
    NSDate *testDate = [NSDate distantPast];
    question.date = testDate;
    STAssertEqualObjects(question.date, testDate, @"Question needs to provide its date");
}

- (void) testQuestionsKeepScore
{
    STAssertEquals(question.score, 42, @"Questions need a numeric score");
}

- (void) testQuestionHasATitle
{
    STAssertEqualObjects(question.title, @"Do iPhones also dream of electric sheep?", @"Question should know its title");
}

- (void) tearDown
{
    question = nil;
}

@end
