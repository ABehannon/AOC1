//
//  ViewController.m
//  AOC Week 3
//
//  Created by Alex Behannon on 12/6/12.
//  Copyright (c) 2012 Alex Behannon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //calling append with two NSStrings, display using alert
    [self displayAlertWithString:[self strAppend1:@"Greetings, " strAppend2:@"Person."]];
    
    //compare two ints
    int intNumOne = 5;
    int intNumTwo = 5;
    
    if([self comparingIntNumOne:intNumOne toIntNumTwo:intNumTwo])
    {
        [self displayAlertWithString:[NSString stringWithFormat:@"Nice! %i is equal to %i.", intNumOne, intNumTwo]];
    } else {
        [self displayAlertWithString:[NSString stringWithFormat:@"Sorry! %i is not equal to %i.", intNumOne, intNumTwo]];
    }
    
    //adding two ints together
    int addamount = [self addingIntOne:10 toIntTwo:10];
    //take added ints and turn into string, show alert with string
    [self displayAlertWithString:[NSString stringWithFormat:@"The total is %@",[[[NSNumber alloc] initWithInt:addamount] stringValue]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//bool for comparing two ints
- (BOOL)comparingIntNumOne:(int)x toIntNumTwo:(int)y
{
    if (x == y) {
        return YES;
    } else {
        return NO;
    }
}

//add two ints
- (int)addingIntOne:(NSInteger)x toIntTwo:(NSInteger)y
{
    return (int)x + (int)y;
}

//display alert function
- (void)displayAlertWithString:(NSString *)string {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:string delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
}

//take two strings and append
- (NSString *)strAppend1:(NSString *)str1 strAppend2:(NSString *)str2
{
    NSMutableString *mutString = [NSMutableString stringWithString:str1];
    [mutString appendString:str2];
    return mutString;
}



@end
