//
//  LNViewController.m
//  Methods
//
//  Created by Gabi on 12/11/2014.
//  Copyright (c) 2014 Liner. All rights reserved.
//

#import "LNViewController.h"

@interface LNViewController ()

@end

@implementation LNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    int answerForFactorial = [ self factorialOfInteger:3];
    NSLog(@"%i", answerForFactorial);
}
-(void)printAllWholeNumbersBelow: (int)number
{
    if (number > 0){
        for (int i = number;i > 0; i --)
        {
            NSLog(@"%i", i );
        }
    
    }
}


-(void)printWholeNumbersInBetweenFirstInteger:(int)firstInteger andSecondInteger:(int)secondInteger
{
    if (firstInteger == secondInteger) {
        NSLog(@"The numbers are equal!");
    }
    else if(firstInteger > secondInteger)
    {
        for (int i = firstInteger; i >= secondInteger; i --)
        {
            NSLog(@"%i", i);
        }
    }
    else{
        for (int i = secondInteger; i >= firstInteger; i --)
        {
            NSLog(@"%i", i);
        }
    }
}


-(int)factorialOfInteger:(int)number
{
    int answer = number;
    for (int i = number; i > 1; i --){
        answer = answer * (i - 1);
    }
    return answer;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
