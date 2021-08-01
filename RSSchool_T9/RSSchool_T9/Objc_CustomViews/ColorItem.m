//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Вякулин Сергей
// On: 29.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

#import "ColorItem.h"

@implementation ColorItem

- (instancetype)initWithTitle:(NSString *)title check:(BOOL)check{
    self = [super init];
    if (self) {
        _title = title;
        _check = check;
    }
    return self;
}
@end
