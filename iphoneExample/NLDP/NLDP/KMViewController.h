//
//  KMViewController.h
//  NLDP
//
//  Created by Kevin Musselman on 4/29/12.
//  Copyright (c) 2012 FrenzyLabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KMViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, retain) IBOutlet UITextField *field;
@property (nonatomic, retain) IBOutlet UILabel *timeLabel;

@end
