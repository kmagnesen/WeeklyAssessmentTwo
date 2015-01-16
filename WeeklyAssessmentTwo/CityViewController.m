//
//  CityViewController.m
//  WeeklyAssessmentTwo
//
//  Created by Kyle Magnesen on 1/16/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "CityViewController.h"
#import "City.h"
#import "WebViewController.h"

@interface CityViewController ()

@property (strong, nonatomic) IBOutlet UITextField *cityNameTextField;

@property (strong, nonatomic) IBOutlet UITextField *stateNameTextField;

@property (strong, nonatomic) IBOutlet UIImageView *cityImageView;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *navBarEdit;

@end

@implementation CityViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self updateView];
    self.cityImageView.image = self.city.image;
    self.editing = NO;
}

- (void)updateView {
    self.stateNameTextField.placeholder = self.city.state;
    self.cityNameTextField.placeholder = self.city.name;
}


- (IBAction)titleEditButtonTapped:(id)sender
{
    [self.delegate titleCityButtonTapped:self.city];
}

- (void) disableEditing:(UITextField *)field {

    field.enabled = FALSE;
    field.borderStyle = UITextBorderStyleNone;
}

- (void) enableEditing:(UITextField *)field {

    field.enabled = TRUE;
    field.borderStyle = UITextBorderStyleRoundedRect;
}

- (IBAction)editTapped:(id)sender {

    if([self.navBarEdit.title isEqualToString:@"Edit"]) {
        self.navBarEdit.title = @"Done";
        [self enableEditing:self.cityNameTextField];
        [self enableEditing:self.stateNameTextField];
    } else {
        self.navBarEdit.title = @"Edit";
        [self disableEditing:self.cityNameTextField];
        [self disableEditing:self.stateNameTextField];
    }

    [self updateView];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    WebViewController *webVC = segue.destinationViewController;
    webVC.url = self.city.url;
}


@end
