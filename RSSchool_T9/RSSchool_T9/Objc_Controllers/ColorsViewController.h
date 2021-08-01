//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Вякулин Сергей
// On: 29.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import <UIKit/UIKit.h>
#import "ColorItem.h"
#import "SettingsViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface ColorsViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) id<SettingsDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
