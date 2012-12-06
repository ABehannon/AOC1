//
//  ViewController.h
//  AOC Week 3
//
//  Created by Alex Behannon on 12/6/12.
//  Copyright (c) 2012 Alex Behannon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//functions
-(int)addingIntOne:(int)x toIntTwo:(int)y;

-(BOOL)comparingIntNumOne:(int)x toIntNumTwo:(int)y;

-(void)displayAlertWithString:(NSString *)string;

-(NSString *)strAppend1:(NSString *)str1 strAppend2:(NSString *)str2;
@end
