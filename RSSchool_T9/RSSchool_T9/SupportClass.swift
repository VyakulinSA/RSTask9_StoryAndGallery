//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Вякулин Сергей
// On: 29.07.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

import Foundation

//support class for transfer colors and another data betwenn controllers
@objc class SupportClass: NSObject {
    @objc static var shared: SupportClass = {
        let instance = SupportClass()
        return instance
    }()
    
    @objc var staticColorsArray: [ColorItem] = [
        ColorItem.init(title: "#be2813", check: false),
        ColorItem.init(title: "#3802da", check: false),
        ColorItem.init(title: "#467c24", check: false),
        ColorItem.init(title: "#808080", check: false),
        ColorItem.init(title: "#8e5af7", check: false),
        ColorItem.init(title: "#f07f5a", check: false),
        ColorItem.init(title: "#f3af22", check: true),
        ColorItem.init(title: "#3dacf7", check: false),
        ColorItem.init(title: "#e87aa4", check: false),
        ColorItem.init(title: "#0f2e3f", check: false),
        ColorItem.init(title: "#213711", check: false),
        ColorItem.init(title: "#511307", check: false),
        ColorItem.init(title: "#92003b", check: false),
    ]
    @objc var switchDrawStories = true
    
    @objc class func sharedInstance() -> SupportClass {
        return SupportClass.shared
    }
    

    
    private override init() {}
}
