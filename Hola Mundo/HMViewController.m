//
//  HMViewController.m
//  Hola Mundo
//
//  Created by g108 DIT UPM on 11/02/14.
//  Copyright (c) 2014 UPM. All rights reserved.
//

#import "HMViewController.h"

@interface HMViewController ()
@property (weak, nonatomic) IBOutlet UILabel *msg;

@end

@implementation HMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)holaPressed:(UIButton *)sender {
    self.msg.text = @"Hola";
}
- (IBAction)mundoPressed:(UIButton *)sender {
    self.msg.text = @"Mundo";
}
- (IBAction)sliderMoved:(UISlider *)sender {
    self.msg.alpha = sender.value;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
