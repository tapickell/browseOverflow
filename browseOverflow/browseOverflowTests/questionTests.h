//
//  questionTests.h
//  browseOverflow
//
//  Created by Todd Pickell on 2/3/13.
//  Copyright (c) 2013 Todd Pickell. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

@class Answer;

@interface questionTests : SenTestCase {
    Question *question;
    Answer *lowScore;
    Answer *highScore;
}

@end
