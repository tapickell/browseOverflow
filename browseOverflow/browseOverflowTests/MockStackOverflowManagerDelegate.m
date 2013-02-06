//
//  MockStackOverflowManagerDelegate.m
//  browseOverflow
//
//  Created by Todd Pickell on 2/5/13.
//  Copyright (c) 2013 Todd Pickell. All rights reserved.
//

#import "MockStackOverflowManagerDelegate.h"
#import "Topic.h"
#import "Question.h"

@implementation MockStackOverflowManagerDelegate

@synthesize fetchError;
@synthesize fetchedQuestions;
@synthesize successQuestion;
@synthesize bodyQuestion;

- (void)fetchingQuestionsFailedWithError: (NSError *)error {
    self.fetchError = error;
}

- (void)fetchingQuestionBodyFailedWithError:(NSError *)error {
    self.fetchError = error;
}

- (void)didReceiveQuestions:(NSArray *)questions {
    self.fetchedQuestions = questions;
}

- (void)retrievingAnswersFailedWithError:(NSError *)error {
    self.fetchError = error;
}

- (void)answersReceivedForQuestion:(Question *)question {
    self.successQuestion = question;
}

- (void)bodyReceivedForQuestion:(Question *)question {
    self.bodyQuestion = question;
}

@end
