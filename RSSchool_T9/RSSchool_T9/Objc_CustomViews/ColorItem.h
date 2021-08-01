//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Вякулин Сергей
// On: 29.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ColorItem : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, assign) BOOL check;

- (instancetype)initWithTitle:(NSString *)title check:(BOOL)check;

@end

NS_ASSUME_NONNULL_END
