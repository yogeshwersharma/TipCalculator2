//
//  SettingsViewController.m
//  TipCalculator2
//
//  Created by Yogi Sharma on 2/2/15.
//  Copyright (c) 2015 Yogi. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultTipSelector;

- (IBAction)onSettingsTap:(id)sender;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)onSettingsTap:(id)sender {
    NSLog(@"tapped in settings %ld", self.defaultTipSelector.selectedSegmentIndex);
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:self.defaultTipSelector.selectedSegmentIndex forKey:@"tip_index"];
    [defaults synchronize];
    NSLog(@"value after setting %ld", [defaults integerForKey:@"tip_index"]);
}
@end
