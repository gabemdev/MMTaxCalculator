//
//  ViewController.m
//  Practice4
//
//  Created by Rockstar. on 1/29/15.
//  Copyright (c) 2015 Gabe Morales. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property double caTax;
@property double chiTax;
@property double nyTax;
@property double txTax;
@property double price;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _caTax = .075;
    _chiTax = .0925;
    _nyTax = .045;
    _txTax = .0825;
    
    
    self.segmentedControl.translatesAutoresizingMaskIntoConstraints = NO;
    self.segmentedControl.selectedSegmentIndex = 0;
    
    [self.segmentedControl setTitle:@"CA" forSegmentAtIndex:0];
    [self.segmentedControl setTitle:@"CHI" forSegmentAtIndex:1];
    [self.segmentedControl setTitle:@"NY" forSegmentAtIndex:2];
    [self.segmentedControl setTitle:@"TX" forSegmentAtIndex:3];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)onCalculateButtonTapped:(id)sender {
    _price = self.priceTextField.text.intValue;
    if (self.segmentedControl.selectedSegmentIndex == 0) {
        NSString *result = [NSString stringWithFormat:@"%.2f", _price * _caTax];
        _resultLabel.text = result;
    } else if (self.segmentedControl.selectedSegmentIndex == 1) {
        NSString *result = [NSString stringWithFormat:@"%.2f", _price * _chiTax];
        _resultLabel.text = result;
    } else if (self.segmentedControl.selectedSegmentIndex == 2){
        NSString *result = [NSString stringWithFormat:@"%.2f", _price * _nyTax];
        _resultLabel.text = result;
    } else {
        NSString *result = [NSString stringWithFormat:@"%.2f", _price * _nyTax];
        _resultLabel.text = result;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
