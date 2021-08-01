//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Вякулин Сергей
// On: 28.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import "SettingsNavigationController.h"
#import "SettingsViewController.h"

@interface SettingsNavigationController ()

@end

@implementation SettingsNavigationController

- (instancetype)init
{
    self = [super init];
    if (self) {
        SettingsViewController *settVC = [SettingsViewController new];
        self = [self initWithRootViewController:settVC];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorNamed:@"SettingsBackground"];
    self.navigationBar.tintColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
