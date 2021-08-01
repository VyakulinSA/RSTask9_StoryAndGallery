//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Вякулин Сергей
// On: 28.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import <UIKit/UIKit.h>
#import "ColorItem.h"

NS_ASSUME_NONNULL_BEGIN


@protocol SettingsDelegate

@property (nonatomic) NSMutableArray<ColorItem *> *colorsArray;
@property (nonatomic, strong) UITableView *tableView;

-(void)initialColorsArray:(BOOL)firstInit;

@end

@interface SettingsViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, SettingsDelegate>

@property (nonatomic) NSMutableArray<ColorItem *> *colorsArray;
@property (nonatomic, strong) UITableView *tableView;

-(void)initialColorsArray:(BOOL)firstInit;

@end

NS_ASSUME_NONNULL_END
