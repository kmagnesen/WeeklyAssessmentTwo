//
//  City.h
//  WeeklyAssessmentTwo
//
//  Created by Kyle Magnesen on 1/16/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface City : NSObject

@property NSString *name;
@property NSString *state;
@property NSURL *url;
@property UIImage *image;

- (instancetype)initWithName:(NSString *)name addState:(NSString *)state addImage:(NSString *)imageName addURL:(NSString *)url;

@end
