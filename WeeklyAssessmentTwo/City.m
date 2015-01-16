//
//  City.m
//  WeeklyAssessmentTwo
//
//  Created by Kyle Magnesen on 1/16/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "City.h"

@implementation City

- (instancetype)initWithName:(NSString *)name addState:(NSString *)state addImage:(NSString *)imageName addURL:(NSString *)url
{
    self.image = [UIImage imageNamed:imageName];
    self.name = name;
    self.state = state;
    self.url = [NSURL URLWithString:url];
    return self;
}


@end
