//
//  ViewController.m
//  WeeklyAssessmentTwo
//
//  Created by Kyle Magnesen on 1/16/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "ViewController.h"
#import "City.h"
#import "CityViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource, CityDelegate>

@property (strong, nonatomic) IBOutlet UITableView *cityTableView;



@property NSMutableArray *cityArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    City *chicago = [[City alloc]initWithName:@"Chicago" addState:@"Illinois" addImage:@"chicago" addURL:@"http://www.cityofchicago.org/city/en.html"];
    City *austin = [[City alloc]initWithName:@"Austin" addState:@"Texas" addImage:@"austin" addURL:@"http://www.austintexas.org"];
    City *omaha = [[City alloc]initWithName:@"Omaha" addState:@"Nebraska" addImage:@"omaha" addURL:@"http://www.omaha.com"];
    City *miami = [[City alloc]initWithName:@"Miami" addState:@"Florida" addImage:@"miami" addURL:@"http://www.miami.com"];

    self.cityArray = [NSMutableArray arrayWithObjects:chicago, austin, omaha, miami, nil];
}

- (void)titleCityButtonTapped:(City *)city{
    self.title = city.name;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {

        [tableView beginUpdates];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        [self.cityArray removeObjectAtIndex:indexPath.row];
        [tableView endUpdates];
    }
}


#pragma mark UITableViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.cityArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID" forIndexPath:indexPath];
    City *c = self.cityArray[indexPath.row];

    cell.textLabel.text = c.name;
    cell.detailTextLabel.text = c.state;
    cell.imageView.image = c.image;

    return cell;

}


@end
