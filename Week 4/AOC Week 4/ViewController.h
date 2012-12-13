//
//  ViewController.h
//  AOC Week 4
//
//  Created by Alex Behannon on 12/13/12.
//  Copyright (c) 2012 Alex Behannon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate> {
    UITextField *loginBox;
    UILabel *infoPrompt;
    UILabel *infoLabel;
}

-(void)onClick:(id)button;

@end
