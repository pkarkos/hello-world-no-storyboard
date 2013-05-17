//
//  CustomView.m
//  HelloWorldNoStoryBoards
//
//  Created by Andrew Copp on 5/15/13.
//  Copyright (c) 2013 Andrew Copp. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

@synthesize textField=_textField;
@synthesize enterButton=_enterButton;
@synthesize helloLabel=_helloLabel;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor whiteColor]];
        self.textField=[[UITextField alloc] initWithFrame:CGRectMake(20, 20, 280, 40)];
        [self.textField setBackgroundColor: [UIColor grayColor]];
        UIButton *button=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button setFrame: CGRectMake(20, 80, 280, 40)];
        [button setTitle:@"Enter" forState:UIControlStateNormal];
        self.enterButton=button;
        self.helloLabel=[[UILabel alloc] initWithFrame:CGRectMake(20, 140, 280, 20)];
        
        [self addSubview:self.textField];
        [self addSubview:self.enterButton];
        [self addSubview:self.helloLabel];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
