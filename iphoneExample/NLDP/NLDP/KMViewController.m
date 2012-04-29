//
//  KMViewController.m
//  Moment
//
//  Created by Kevin Musselman on 4/29/12.
//  Copyright (c) 2012 FrenzyLabs. All rights reserved.
//

#import "KMViewController.h"
#import "TimeParser.h"

@interface KMViewController ()

@end

@implementation KMViewController
@synthesize field, timeLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.field.delegate = self;
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSString *when = [textField.text lowercaseString];
    char *whenstr = (char *)[when UTF8String];
    time_t finalTime = parseDateTimeString(whenstr);
    str_time= localtime(&finalTime);

    NSString *thedate = [NSString stringWithCString:asctime(str_time) encoding:NSUTF8StringEncoding];
    self.timeLabel.text = thedate;    
    
    [textField resignFirstResponder];
    return YES;
}



@end
