//
//  Question.h
//  browseOverflow
//
//  Created by Todd Pickell on 2/3/13.
//  Copyright (c) 2013 Todd Pickell. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Answer;

@interface Question : NSObject {
    NSMutableSet *answerSet;
}

@property (retain) NSDate *date;
@property (copy) NSString *title;
@property NSInteger score;
@property (readonly) NSArray *answers;

- (void) addAnswer: (Answer *)answer;

@end
