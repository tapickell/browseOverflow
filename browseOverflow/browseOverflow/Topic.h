//
//  Topic.h
//  browseOverflow
//
//  Created by Todd Pickell on 2/2/13.
//  Copyright (c) 2013 Todd Pickell. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Question;

@interface Topic : NSObject

@property (readonly) NSString *name;
@property (readonly) NSString *tag;

- (id)initWithName:(NSString*)newName tag:(NSString*)newTag;

- (NSArray *) recentQuestions;

- (void) addQuestion: (Question *) questionToAdd;

@end
