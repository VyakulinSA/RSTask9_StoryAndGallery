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

@interface SettingTableViewCell : UITableViewCell

@property (nonatomic) NSString *detailColorName;

//for first Setting table cell2
-(void)configureDetailColor:(NSString *)detailColorName;
//for second Setting table allCell
-(void)configureViews:(ColorItem *)colorItem;

@end

NS_ASSUME_NONNULL_END
