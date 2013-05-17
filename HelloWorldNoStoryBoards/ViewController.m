//
//  ViewController.m
//  HelloWorldNoStoryBoards
//
//  Created by Andrew Copp on 5/15/13.
//  Copyright (c) 2013 Andrew Copp. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

//@synthesize view=_view;


- (void)viewDidLoad
{
    [super viewDidLoad];
	self.view=[[CustomView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    //CustomView *ourView = (CustomView *)self.view;
    [self.view.enterButton addTarget:self action:@selector(userDidPressEnter) forControlEvents:UIControlEventTouchUpInside];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

    // Dispose of any resources that can be recreated.
}
- (void)userDidPressEnter
{
    //CustomView *ourView = (CustomView *)self.view;
    NSString *helloText= [@"Hello, " stringByAppendingString: self.view.textField.text ];
    NSString *helloWorld= @"Hello, World!";
    if ([self.view.textField.text isEqualToString: @""])
    {
        [self.view.helloLabel setText: helloWorld];
    }
    else
        [self.view.helloLabel setText: helloText];
  
}

@end
