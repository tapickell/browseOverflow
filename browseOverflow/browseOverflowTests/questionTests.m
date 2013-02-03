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
    testDate = [[NSDate alloc] init];
    question.date = testDate;
}

- (void) testQuestionHasADate
{
    STAssertTrue([question.date isKindOfClass: [NSDate class]], @"Question needs to privide its date");
}

@end
