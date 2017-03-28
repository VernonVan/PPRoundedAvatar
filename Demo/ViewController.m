//
//  ViewController.m
//  Demo
//
//  Created by Vernon on 2017/3/28.
//  Copyright © 2017年 Vernon. All rights reserved.
//

#import "ViewController.h"
#import "PPRoundedAvatar.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet PPRoundedAvatar *avatarView1;
@property (weak, nonatomic) IBOutlet PPRoundedAvatar *avatarView2;
@property (weak, nonatomic) IBOutlet PPRoundedAvatar *avatarView3;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.avatarView1.avatarImage = [UIImage imageNamed:@"avatar1.jpeg"];
    self.avatarView1.borderWidth = 5.0;
    self.avatarView1.borderColor = [UIColor colorWithRed:0.45 green:0.78 blue:0.42 alpha:1.0];
    
    self.avatarView2.avatarImage = [UIImage imageNamed:@"avatar1.jpeg"];
    self.avatarView2.borderWidth = 5.0;
    self.avatarView2.borderColor = [UIColor colorWithRed:0.98 green:0.79 blue:0.49 alpha:1.0];
    
    self.avatarView3.avatarImage = [UIImage imageNamed:@"avatar1.jpeg"];
    self.avatarView3.borderWidth = 5.0;
    self.avatarView3.borderColor = [UIColor colorWithRed:0.99 green:0.64 blue:0.54 alpha:1.0];
}

@end
