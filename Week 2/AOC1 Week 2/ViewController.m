//
//  ViewController.m
//  AOC1 Week 2
//
//  Created by Alex Behannon on 11/29/12.
//  Copyright (c) 2012 Alex Behannon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
 
    //CODE STARTED
    
    //UIView
    UIView *viewcontainer = [[UIView alloc] initWithFrame: CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [viewcontainer setBackgroundColor:[UIColor blackColor]];
    
    //UILabels
    UILabel *bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 30.0f)];
    {
        bookTitle.text = @"Elminster: The Making of a Mage";
        bookTitle.textAlignment = NSTextAlignmentCenter;
        bookTitle.backgroundColor = [UIColor blueColor];
        bookTitle.textColor = [UIColor whiteColor];
    }
    
    UILabel *bookAuthorTag = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 30.0f, 90.0f, 30.0f)];
    {
        bookAuthorTag.text = @"Author: ";
        bookAuthorTag.textAlignment = NSTextAlignmentRight;
        bookAuthorTag.backgroundColor = [UIColor blackColor];
        bookAuthorTag.textColor = [UIColor grayColor];
    }
    
    UILabel *bookAuthor = [[UILabel alloc] initWithFrame:CGRectMake(90.0f, 30.0f, 300.0f, 30.0f)];
    {
        bookAuthor.text = @"Ed Greenwood";
        bookAuthor.textAlignment = NSTextAlignmentLeft;
        bookAuthor.backgroundColor = [UIColor grayColor];
        bookAuthor.textColor = [UIColor blackColor];
    }
    
    UILabel *bookPubTag = [[UILabel alloc] initWithFrame:CGRectMake(0, 60.0f, 90.0f, 30.0f)];
    {
        bookPubTag.text = @"Publisher: ";
        bookPubTag.textAlignment = NSTextAlignmentRight;
        bookPubTag.backgroundColor = [UIColor blackColor];
        bookPubTag.textColor = [UIColor yellowColor];
    }
    
    UILabel *bookPub = [[UILabel alloc] initWithFrame:CGRectMake(90.0f, 60.0f, 300.0f, 30.0f)];
    {
        bookPub.text = @"Wizards of the Coast";
        bookPub.textAlignment = NSTextAlignmentLeft;
        bookPub.backgroundColor = [UIColor yellowColor];
        bookPub.textColor = [UIColor blackColor];
    }
    
    UILabel *bookSummary = [[UILabel alloc] initWithFrame:CGRectMake(0, 90.0f, self.view.frame.size.width, 110.0f)];
    {
        bookSummary.text = @"This book explains the origin and reasoning behind the 'master' mage Elminister. This is a relatively well known character that is in multiple Forgotten Realms books.";
        bookSummary.textAlignment = NSTextAlignmentLeft;
        bookSummary.backgroundColor = [UIColor greenColor];
        bookSummary.textColor = [UIColor blackColor];
        bookSummary.NumberOfLines = 5;
    }
    
    //Labels + Arrays
    NSMutableArray *nsmArray = [[NSMutableArray alloc] initWithCapacity:5];
    [nsmArray addObject:@"Wizards"];
    [nsmArray addObject:@"Magic"];
    [nsmArray addObject:@"MORE Magic"];
    [nsmArray addObject:@"Swords and stuff"];
    [nsmArray addObject:@"Dragons"];
    
    UILabel *listTag = [[UILabel alloc] initWithFrame:CGRectMake(0, 200.0f, self.view.frame.size.width, 30.0f)];
    {
        listTag.text = @"List of Items:";
        listTag.textAlignment = NSTextAlignmentLeft;
        listTag.backgroundColor = [UIColor purpleColor];
        listTag.textColor = [UIColor whiteColor];
    }
    
    UILabel *listOfItems = [[UILabel alloc] initWithFrame:CGRectMake(0, 230.0f, self.view.frame.size.width, 50.0f)];
    
    NSMutableString *nsmString = [NSMutableString string];
    
    for (int i=0; i<5; i++){
        [nsmString appendString:[nsmArray objectAtIndex:i]];
        if (i<4){
            [nsmString appendString:@", "];
        } else {
            [nsmString appendString:@"."];
        }
    }
    
    {
        listOfItems.text = nsmString;
        listOfItems.backgroundColor = [UIColor brownColor];
        listOfItems.textColor = [UIColor whiteColor];
        listOfItems.numberOfLines = 5;
        listOfItems.textAlignment = NSTextAlignmentCenter;
    }
    
    //subview calls
    [self.view addSubview:viewcontainer];
    [self.view addSubview:bookTitle];
    [self.view addSubview:bookAuthorTag];
    [self.view addSubview:bookAuthor];
    [self.view addSubview:bookPubTag];
    [self.view addSubview:bookPub];
    [self.view addSubview:bookSummary];
    [self.view addSubview:listTag];
    [self.view addSubview:listOfItems];

    
    //CODE ENDED
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
