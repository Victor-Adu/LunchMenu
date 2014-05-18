//
//  ViewController.m
//  LunchMenu
//
//  Created by Victor  Adu on 5/5/14.
//  Copyright (c) 2014 Victor  Adu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *myName = @"Victor";
    NSDate *today = [NSDate date];
    NSDateFormatter *formatter = [NSDateFormatter new];
    [formatter setDateFormat:@"EEEE"]; //'EEEE' gives us day of the week. 'E' gives us abbrev day version.
    // Trying 'YYYY'gives year. 'MMMM' gives month etc.
    
    NSMutableDictionary *menu = [NSMutableDictionary dictionary];
    [menu setObject:@"Hot Dog" forKey:@"Monday"];
    [menu setObject:@"Sandwich" forKey:@"Tuesday"];
    [menu setObject:@"Nachos" forKey:@"Wednesday"];
    [menu setObject:@"Mac and Cheese" forKey:@"Thursday"];
    [menu setObject:@"Pizza" forKey:@"Friday"];
    
    NSString *dayOfTheWeek = [formatter stringFromDate:today];
    NSString *foodOfTheDay = [menu objectForKey:dayOfTheWeek];
    
    todayLabel.text = [NSString stringWithFormat:@"Today is %@", dayOfTheWeek];
    lunchLabel.text = [NSString stringWithFormat:@"%@ is having %@!", myName, foodOfTheDay];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
