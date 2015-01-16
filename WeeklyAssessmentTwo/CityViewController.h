//
//  CityViewController.h
//  WeeklyAssessmentTwo
//
//  Created by Kyle Magnesen on 1/16/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@protocol CityDelegate <NSObject>

- (void)titleCityButtonTapped:(City *)city;

@end

@interface CityViewController : UIViewController

@property City *city;

@property id <CityDelegate> delegate;

@end
