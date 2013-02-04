//
//  Person.h
//  browseOverflow
//
//  Created by Todd Pickell on 2/3/13.
//  Copyright (c) 2013 Todd Pickell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (readonly) NSString *name;
@property (readonly) NSURL *avatarURL;

- (id) initWithName: (NSString *)newName avatarLocation: (NSString *)newUrl;

@end
