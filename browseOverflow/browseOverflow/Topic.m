//
//  Topic.m
//  browseOverflow
//
//  Created by Todd Pickell on 2/2/13.
//  Copyright (c) 2013 Todd Pickell. All rights reserved.
//

#import "Topic.h"
#import "Question.h"

@implementation Topic {
    NSArray *questions;
}

@synthesize name;
@synthesize tag;

- (id)initWithName:(NSString*)newName tag:(NSString*)newTag
{
    if ((self = [super init])) {
        name = [newName copy];
        tag = [newTag copy];
        questions = [[NSArray alloc] init];
    }
    return self;
}

- (NSArray *) recentQuestions
{
    return [self sortQuestionsLatestFirst:questions];
}

- (NSArray *) sortQuestionsLatestFirst: (NSArray *)questionList
{
    return [questionList sortedArrayUsingComparator: ^(id obj1, id obj2) {
        Question *q1 = (Question *)obj1;
        Question *q2 = (Question *)obj2;
        return [q2.date compare: q1.date];
    }];
}

- (void) addQuestion:(Question *)questionToAdd
{
    NSArray *newQuestions = [questions arrayByAddingObject:questionToAdd];
    if ([newQuestions count] > 20) {
        newQuestions = [self sortQuestionsLatestFirst:newQuestions];
        newQuestions = [newQuestions subarrayWithRange:NSMakeRange(0, 20)];
    }
    questions = newQuestions;
}

@end
