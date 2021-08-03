//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Вякулин Сергей
// On: 01.08.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {
    private let supClass = SupportClass.sharedInstance()
    var storyPath: CGPath?
    var storyColor: CGColor?
    let shLayer = CAShapeLayer()
    
    
    func anim(){
        
        shLayer.path = storyPath!
        shLayer.fillColor = nil
        shLayer.strokeColor = storyColor
        shLayer.lineWidth = 0.5
        // animation
        
        let animation : CABasicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0.0
        animation.toValue = 1.0
        
        if supClass.switchDrawStories {
            animation.duration = 3.0
        } else {
            animation.duration = 0
        }
        

        shLayer.add(animation, forKey: "myStroke")
        self.layer.addSublayer(shLayer)
    }
    
    
    func settCell(storyPath: CGPath, storyColor: CGColor){
        self.storyPath = storyPath
        self.storyColor = storyColor
    }
    
}
