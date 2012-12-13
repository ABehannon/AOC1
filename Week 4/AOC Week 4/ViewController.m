//
//  ViewController.m
//  AOC Week 4
//
//  Created by Alex Behannon on 12/13/12.
//  Copyright (c) 2012 Alex Behannon. All rights reserved.
//

#import "ViewController.h"
#define lbutton 0
#define dbutton 1
#define ibutton 2

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Container
    UIView *viewcontainer = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    //------Login------
    //UILabel for Username
    UILabel *usernameTag = [[UILabel alloc] initWithFrame:CGRectMake(10.f, 10, 90, 30)];
    {
        usernameTag.text = @"Username:";
        usernameTag.textAlignment = NSTextAlignmentLeft;
    }
    
    //Login Field
    loginBox = [[UITextField alloc] initWithFrame:CGRectMake(usernameTag.frame.size.width + 10, 13, viewcontainer.frame.size.width - usernameTag.frame.size.width - 15, 30)];
    [loginBox setPlaceholder:@"John Doe"];
    [loginBox setBorderStyle:UITextBorderStyleRoundedRect];
    [loginBox setDelegate:self];
    
    //Login Button
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [loginButton setFrame:CGRectMake(viewcontainer.frame.size.width - 90, 50, 85, 30)];
    [loginButton setTitle:@"Login" forState:UIControlStateNormal];
    [loginButton setTag:lbutton];
    [loginButton addTarget:self action:@selector(onClick:) forControlEvents:(UIControlEventTouchUpInside)];

    //UILabel for Prompt
    infoPrompt  = [[UILabel alloc] initWithFrame:CGRectMake(0, 90, self.view.frame.size.width, 60)];
    [infoPrompt setNumberOfLines:3];
    [infoPrompt setText:@"Please Enter Username"];
    [infoPrompt setTextAlignment:NSTextAlignmentCenter];
    [infoPrompt setTextColor:[UIColor blueColor]];
    [infoPrompt setBackgroundColor:[UIColor grayColor]];
    
    //------DATE------
    //show date button
    UIButton *dateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [dateButton setFrame:CGRectMake(15, 200, 85, 30)];
    [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
    [dateButton setTag:dbutton];
    [dateButton addTarget:self action:@selector(onClick:) forControlEvents:(UIControlEventTouchUpInside)];
    
    //------INFO------
    //info button
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    [infoButton setFrame:CGRectMake(10, viewcontainer.frame.size.height - 30, infoButton.frame.size.width, infoButton.frame.size.height)];
    [infoButton setTag:ibutton];
    [infoButton addTarget:self action:@selector(onClick:) forControlEvents:(UIControlEventTouchUpInside)];
    
    //info label
    infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, viewcontainer.frame.size.height - 90, viewcontainer.frame.size.width, 100)];
    [infoLabel setFont:[UIFont systemFontOfSize:12]];
    [infoLabel setTextAlignment:NSTextAlignmentLeft];
    [infoLabel setBackgroundColor:[UIColor clearColor]];
    
    //------ETC------
    //subview calls
    [self.view addSubview:viewcontainer];
    [viewcontainer addSubview:usernameTag];
    [viewcontainer addSubview:loginBox];
    [viewcontainer addSubview:loginButton];
    [viewcontainer addSubview:infoPrompt];
    [viewcontainer addSubview:dateButton];
    [viewcontainer addSubview:infoButton];
    [viewcontainer addSubview:infoLabel];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)onClick:(id)button {
    switch ([button tag]) {
        case lbutton:
            if([loginBox.text length] > 0)
            {
                [infoPrompt setText:[NSString stringWithFormat:@"User %@ has been signed in.", [loginBox text]]];
                [loginBox resignFirstResponder];
            }
            else
            {
                [infoPrompt setText:@"The username field cannot be empty"];
            }
            break;
            
        case dbutton:
        {
            NSDate *currentDate = [NSDate date];
            NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
            [dateFormat setDateStyle:NSDateFormatterFullStyle];
            [dateFormat setTimeStyle:NSDateFormatterFullStyle];
            
            UIAlertView *dateAlert = [[UIAlertView alloc] initWithTitle:@"Current Date"
                                                                 message:[NSString stringWithFormat:@"%@",[dateFormat stringFromDate:currentDate]]
                                                                delegate:nil
                                                       cancelButtonTitle:@"OK"
                                                       otherButtonTitles:nil];
            [dateAlert show];
            break;
        }
            
        case ibutton:
            [infoLabel setText:@"This application was created by: Alex Behannon"];
            break;
            
    }
}

@end
