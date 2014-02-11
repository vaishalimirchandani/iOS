//
//  HMViewController.m
//  Hola Mundo
//
//  Created by g108 DIT UPM on 11/02/14.
//  Copyright (c) 2014 UPM. All rights reserved.
//

#import "HMViewController.h"
#import <MapKit/MapKit.h>

@interface HMViewController ()
@property (weak, nonatomic) IBOutlet UILabel *msg;
@property (weak, nonatomic) IBOutlet MKMapView *map;

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
    MKCoordinateRegion reg = {{40.452445,-3.726162},{0.005, 0.005}};
    [self.map setRegion:reg animated:YES];
    self.map.mapType = MKMapTypeSatellite;
}
- (IBAction)sliderMoved:(UISlider *)sender {
    self.msg.alpha = sender.value;
}
- (IBAction)egiptPressed:(UIButton *)sender {
    self.msg.text = @"Egipto";
    MKCoordinateRegion reg = {{29.975798 , 31.130846},{0.005, 0.005}};
    [self.map setRegion:reg animated:YES];}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
