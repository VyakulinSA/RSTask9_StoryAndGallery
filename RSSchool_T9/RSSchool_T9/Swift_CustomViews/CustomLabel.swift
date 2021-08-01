//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Вякулин Сергей
// On: 01.08.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class CustomLabel: UILabel {
    
    var top:CGFloat?
    var left:CGFloat?
    var bottom:CGFloat?
    var right:CGFloat?
    

    func settParam(top: CGFloat, left: CGFloat, bottom:CGFloat, right:CGFloat){
        self.top = top
        self.left = left
        self.bottom = bottom
        self.right = right
    }
        
    override func drawText(in rect: CGRect) {
        guard top != nil, left != nil, bottom != nil, right != nil else {return}
        let inset = UIEdgeInsets(top: top!, left: left!, bottom: bottom!, right: right!)
        super.drawText(in: rect.inset(by: inset))
    }

}
