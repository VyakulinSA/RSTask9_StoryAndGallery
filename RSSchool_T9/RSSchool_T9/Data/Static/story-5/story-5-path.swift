//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Вякулин Сергей
// On: 03.08.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

extension CGPath {
    static let story5path1: CGPath = {
        //// Color Declarations
        //        let fillColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
        
        //// Group
        //// Group 2
        //// Group 3
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 73.75, y: 72.5))
        bezierPath.addLine(to: CGPoint(x: 66.25, y: 72.5))
        bezierPath.addLine(to: CGPoint(x: 66.25, y: 31.25))
        bezierPath.addCurve(to: CGPoint(x: 65, y: 30), controlPoint1: CGPoint(x: 66.25, y: 30.56), controlPoint2: CGPoint(x: 65.69, y: 30))
        bezierPath.addLine(to: CGPoint(x: 47.5, y: 30))
        bezierPath.addLine(to: CGPoint(x: 47.5, y: 1.25))
        bezierPath.addCurve(to: CGPoint(x: 46.25, y: 0), controlPoint1: CGPoint(x: 47.5, y: 0.56), controlPoint2: CGPoint(x: 46.94, y: 0))
        bezierPath.addLine(to: CGPoint(x: 13.75, y: 0))
        bezierPath.addCurve(to: CGPoint(x: 12.5, y: 1.25), controlPoint1: CGPoint(x: 13.06, y: 0), controlPoint2: CGPoint(x: 12.5, y: 0.56))
        bezierPath.addLine(to: CGPoint(x: 12.5, y: 72.5))
        bezierPath.addLine(to: CGPoint(x: 1.25, y: 72.5))
        bezierPath.addCurve(to: CGPoint(x: 0, y: 73.75), controlPoint1: CGPoint(x: 0.56, y: 72.5), controlPoint2: CGPoint(x: 0, y: 73.06))
        bezierPath.addCurve(to: CGPoint(x: 1.25, y: 75), controlPoint1: CGPoint(x: 0, y: 74.44), controlPoint2: CGPoint(x: 0.56, y: 75))
        bezierPath.addLine(to: CGPoint(x: 73.75, y: 75))
        bezierPath.addCurve(to: CGPoint(x: 75, y: 73.75), controlPoint1: CGPoint(x: 74.44, y: 75), controlPoint2: CGPoint(x: 75, y: 74.44))
        bezierPath.addCurve(to: CGPoint(x: 73.75, y: 72.5), controlPoint1: CGPoint(x: 75, y: 73.06), controlPoint2: CGPoint(x: 74.44, y: 72.5))
        bezierPath.close()
        bezierPath.move(to: CGPoint(x: 26.25, y: 72.5))
        bezierPath.addLine(to: CGPoint(x: 21.25, y: 72.5))
        bezierPath.addLine(to: CGPoint(x: 21.25, y: 61.25))
        bezierPath.addCurve(to: CGPoint(x: 22.5, y: 60), controlPoint1: CGPoint(x: 21.25, y: 60.56), controlPoint2: CGPoint(x: 21.81, y: 60))
        bezierPath.addLine(to: CGPoint(x: 25, y: 60))
        bezierPath.addCurve(to: CGPoint(x: 26.25, y: 61.25), controlPoint1: CGPoint(x: 25.69, y: 60), controlPoint2: CGPoint(x: 26.25, y: 60.56))
        bezierPath.addLine(to: CGPoint(x: 26.25, y: 72.5))
        bezierPath.close()
        bezierPath.move(to: CGPoint(x: 31.25, y: 31.25))
        bezierPath.addLine(to: CGPoint(x: 31.25, y: 72.5))
        bezierPath.addLine(to: CGPoint(x: 28.75, y: 72.5))
        bezierPath.addLine(to: CGPoint(x: 28.75, y: 61.25))
        bezierPath.addCurve(to: CGPoint(x: 25, y: 57.5), controlPoint1: CGPoint(x: 28.75, y: 59.18), controlPoint2: CGPoint(x: 27.07, y: 57.5))
        bezierPath.addLine(to: CGPoint(x: 22.5, y: 57.5))
        bezierPath.addCurve(to: CGPoint(x: 18.75, y: 61.25), controlPoint1: CGPoint(x: 20.43, y: 57.5), controlPoint2: CGPoint(x: 18.75, y: 59.18))
        bezierPath.addLine(to: CGPoint(x: 18.75, y: 72.5))
        bezierPath.addLine(to: CGPoint(x: 15, y: 72.5))
        bezierPath.addLine(to: CGPoint(x: 15, y: 2.5))
        bezierPath.addLine(to: CGPoint(x: 45, y: 2.5))
        bezierPath.addLine(to: CGPoint(x: 45, y: 30))
        bezierPath.addLine(to: CGPoint(x: 32.5, y: 30))
        bezierPath.addCurve(to: CGPoint(x: 31.25, y: 31.25), controlPoint1: CGPoint(x: 31.81, y: 30), controlPoint2: CGPoint(x: 31.25, y: 30.56))
        bezierPath.close()
        bezierPath.move(to: CGPoint(x: 63.75, y: 72.5))
        bezierPath.addLine(to: CGPoint(x: 33.75, y: 72.5))
        bezierPath.addLine(to: CGPoint(x: 33.75, y: 32.5))
        bezierPath.addLine(to: CGPoint(x: 63.75, y: 32.5))
        bezierPath.addLine(to: CGPoint(x: 63.75, y: 72.5))
        bezierPath.close()
        //
        //        bezierPath.fill()
        
        
        //// Bezier 2 Drawing
        bezierPath.append({
            let bezier2Path = UIBezierPath()
            bezier2Path.move(to: CGPoint(x: 40, y: 17.5))
            bezier2Path.addLine(to: CGPoint(x: 32.5, y: 17.5))
            bezier2Path.addCurve(to: CGPoint(x: 31.25, y: 18.75), controlPoint1: CGPoint(x: 31.81, y: 17.5), controlPoint2: CGPoint(x: 31.25, y: 18.06))
            bezier2Path.addLine(to: CGPoint(x: 31.25, y: 26.25))
            bezier2Path.addCurve(to: CGPoint(x: 32.5, y: 27.5), controlPoint1: CGPoint(x: 31.25, y: 26.94), controlPoint2: CGPoint(x: 31.81, y: 27.5))
            bezier2Path.addLine(to: CGPoint(x: 40, y: 27.5))
            bezier2Path.addCurve(to: CGPoint(x: 41.25, y: 26.25), controlPoint1: CGPoint(x: 40.69, y: 27.5), controlPoint2: CGPoint(x: 41.25, y: 26.94))
            bezier2Path.addLine(to: CGPoint(x: 41.25, y: 18.75))
            bezier2Path.addCurve(to: CGPoint(x: 40, y: 17.5), controlPoint1: CGPoint(x: 41.25, y: 18.06), controlPoint2: CGPoint(x: 40.69, y: 17.5))
            bezier2Path.close()
            bezier2Path.move(to: CGPoint(x: 38.75, y: 25))
            bezier2Path.addLine(to: CGPoint(x: 33.75, y: 25))
            bezier2Path.addLine(to: CGPoint(x: 33.75, y: 20))
            bezier2Path.addLine(to: CGPoint(x: 38.75, y: 20))
            bezier2Path.addLine(to: CGPoint(x: 38.75, y: 25))
            bezier2Path.close()
            return bezier2Path
            
        }())
        
        
        
        //// Bezier 3 Drawing
        bezierPath.append({
            let bezier3Path = UIBezierPath()
            bezier3Path.move(to: CGPoint(x: 40, y: 5))
            bezier3Path.addLine(to: CGPoint(x: 32.5, y: 5))
            bezier3Path.addCurve(to: CGPoint(x: 31.25, y: 6.25), controlPoint1: CGPoint(x: 31.81, y: 5), controlPoint2: CGPoint(x: 31.25, y: 5.56))
            bezier3Path.addLine(to: CGPoint(x: 31.25, y: 13.75))
            bezier3Path.addCurve(to: CGPoint(x: 32.5, y: 15), controlPoint1: CGPoint(x: 31.25, y: 14.44), controlPoint2: CGPoint(x: 31.81, y: 15))
            bezier3Path.addLine(to: CGPoint(x: 40, y: 15))
            bezier3Path.addCurve(to: CGPoint(x: 41.25, y: 13.75), controlPoint1: CGPoint(x: 40.69, y: 15), controlPoint2: CGPoint(x: 41.25, y: 14.44))
            bezier3Path.addLine(to: CGPoint(x: 41.25, y: 6.25))
            bezier3Path.addCurve(to: CGPoint(x: 40, y: 5), controlPoint1: CGPoint(x: 41.25, y: 5.56), controlPoint2: CGPoint(x: 40.69, y: 5))
            bezier3Path.close()
            bezier3Path.move(to: CGPoint(x: 38.75, y: 12.5))
            bezier3Path.addLine(to: CGPoint(x: 33.75, y: 12.5))
            bezier3Path.addLine(to: CGPoint(x: 33.75, y: 7.5))
            bezier3Path.addLine(to: CGPoint(x: 38.75, y: 7.5))
            bezier3Path.addLine(to: CGPoint(x: 38.75, y: 12.5))
            bezier3Path.close()
            return bezier3Path
        }())
        
        
        //// Bezier 4 Drawing
        bezierPath.append({
            let bezier4Path = UIBezierPath()
            bezier4Path.move(to: CGPoint(x: 27.5, y: 17.5))
            bezier4Path.addLine(to: CGPoint(x: 20, y: 17.5))
            bezier4Path.addCurve(to: CGPoint(x: 18.75, y: 18.75), controlPoint1: CGPoint(x: 19.31, y: 17.5), controlPoint2: CGPoint(x: 18.75, y: 18.06))
            bezier4Path.addLine(to: CGPoint(x: 18.75, y: 26.25))
            bezier4Path.addCurve(to: CGPoint(x: 20, y: 27.5), controlPoint1: CGPoint(x: 18.75, y: 26.94), controlPoint2: CGPoint(x: 19.31, y: 27.5))
            bezier4Path.addLine(to: CGPoint(x: 27.5, y: 27.5))
            bezier4Path.addCurve(to: CGPoint(x: 28.75, y: 26.25), controlPoint1: CGPoint(x: 28.19, y: 27.5), controlPoint2: CGPoint(x: 28.75, y: 26.94))
            bezier4Path.addLine(to: CGPoint(x: 28.75, y: 18.75))
            bezier4Path.addCurve(to: CGPoint(x: 27.5, y: 17.5), controlPoint1: CGPoint(x: 28.75, y: 18.06), controlPoint2: CGPoint(x: 28.19, y: 17.5))
            bezier4Path.close()
            bezier4Path.move(to: CGPoint(x: 26.25, y: 25))
            bezier4Path.addLine(to: CGPoint(x: 21.25, y: 25))
            bezier4Path.addLine(to: CGPoint(x: 21.25, y: 20))
            bezier4Path.addLine(to: CGPoint(x: 26.25, y: 20))
            bezier4Path.addLine(to: CGPoint(x: 26.25, y: 25))
            bezier4Path.close()
            return bezier4Path
        }())
        
        
        //// Bezier 5 Drawing
        bezierPath.append({
            let bezier5Path = UIBezierPath()
            bezier5Path.move(to: CGPoint(x: 27.5, y: 5))
            bezier5Path.addLine(to: CGPoint(x: 20, y: 5))
            bezier5Path.addCurve(to: CGPoint(x: 18.75, y: 6.25), controlPoint1: CGPoint(x: 19.31, y: 5), controlPoint2: CGPoint(x: 18.75, y: 5.56))
            bezier5Path.addLine(to: CGPoint(x: 18.75, y: 13.75))
            bezier5Path.addCurve(to: CGPoint(x: 20, y: 15), controlPoint1: CGPoint(x: 18.75, y: 14.44), controlPoint2: CGPoint(x: 19.31, y: 15))
            bezier5Path.addLine(to: CGPoint(x: 27.5, y: 15))
            bezier5Path.addCurve(to: CGPoint(x: 28.75, y: 13.75), controlPoint1: CGPoint(x: 28.19, y: 15), controlPoint2: CGPoint(x: 28.75, y: 14.44))
            bezier5Path.addLine(to: CGPoint(x: 28.75, y: 6.25))
            bezier5Path.addCurve(to: CGPoint(x: 27.5, y: 5), controlPoint1: CGPoint(x: 28.75, y: 5.56), controlPoint2: CGPoint(x: 28.19, y: 5))
            bezier5Path.close()
            bezier5Path.move(to: CGPoint(x: 26.25, y: 12.5))
            bezier5Path.addLine(to: CGPoint(x: 21.25, y: 12.5))
            bezier5Path.addLine(to: CGPoint(x: 21.25, y: 7.5))
            bezier5Path.addLine(to: CGPoint(x: 26.25, y: 7.5))
            bezier5Path.addLine(to: CGPoint(x: 26.25, y: 12.5))
            bezier5Path.close()
            return bezier5Path
        }())
        
        
        //// Bezier 6 Drawing
        bezierPath.append({
            let bezier6Path = UIBezierPath()
            bezier6Path.move(to: CGPoint(x: 27.5, y: 30))
            bezier6Path.addLine(to: CGPoint(x: 20, y: 30))
            bezier6Path.addCurve(to: CGPoint(x: 18.75, y: 31.25), controlPoint1: CGPoint(x: 19.31, y: 30), controlPoint2: CGPoint(x: 18.75, y: 30.56))
            bezier6Path.addLine(to: CGPoint(x: 18.75, y: 38.75))
            bezier6Path.addCurve(to: CGPoint(x: 20, y: 40), controlPoint1: CGPoint(x: 18.75, y: 39.44), controlPoint2: CGPoint(x: 19.31, y: 40))
            bezier6Path.addLine(to: CGPoint(x: 27.5, y: 40))
            bezier6Path.addCurve(to: CGPoint(x: 28.75, y: 38.75), controlPoint1: CGPoint(x: 28.19, y: 40), controlPoint2: CGPoint(x: 28.75, y: 39.44))
            bezier6Path.addLine(to: CGPoint(x: 28.75, y: 31.25))
            bezier6Path.addCurve(to: CGPoint(x: 27.5, y: 30), controlPoint1: CGPoint(x: 28.75, y: 30.56), controlPoint2: CGPoint(x: 28.19, y: 30))
            bezier6Path.close()
            bezier6Path.move(to: CGPoint(x: 26.25, y: 37.5))
            bezier6Path.addLine(to: CGPoint(x: 21.25, y: 37.5))
            bezier6Path.addLine(to: CGPoint(x: 21.25, y: 32.5))
            bezier6Path.addLine(to: CGPoint(x: 26.25, y: 32.5))
            bezier6Path.addLine(to: CGPoint(x: 26.25, y: 37.5))
            bezier6Path.close()
            return bezier6Path
        }())
        
        //// Bezier 7 Drawing
        bezierPath.append({
            let bezier7Path = UIBezierPath()
            bezier7Path.move(to: CGPoint(x: 27.5, y: 42.5))
            bezier7Path.addLine(to: CGPoint(x: 20, y: 42.5))
            bezier7Path.addCurve(to: CGPoint(x: 18.75, y: 43.75), controlPoint1: CGPoint(x: 19.31, y: 42.5), controlPoint2: CGPoint(x: 18.75, y: 43.06))
            bezier7Path.addLine(to: CGPoint(x: 18.75, y: 51.25))
            bezier7Path.addCurve(to: CGPoint(x: 20, y: 52.5), controlPoint1: CGPoint(x: 18.75, y: 51.94), controlPoint2: CGPoint(x: 19.31, y: 52.5))
            bezier7Path.addLine(to: CGPoint(x: 27.5, y: 52.5))
            bezier7Path.addCurve(to: CGPoint(x: 28.75, y: 51.25), controlPoint1: CGPoint(x: 28.19, y: 52.5), controlPoint2: CGPoint(x: 28.75, y: 51.94))
            bezier7Path.addLine(to: CGPoint(x: 28.75, y: 43.75))
            bezier7Path.addCurve(to: CGPoint(x: 27.5, y: 42.5), controlPoint1: CGPoint(x: 28.75, y: 43.06), controlPoint2: CGPoint(x: 28.19, y: 42.5))
            bezier7Path.close()
            bezier7Path.move(to: CGPoint(x: 26.25, y: 50))
            bezier7Path.addLine(to: CGPoint(x: 21.25, y: 50))
            bezier7Path.addLine(to: CGPoint(x: 21.25, y: 45))
            bezier7Path.addLine(to: CGPoint(x: 26.25, y: 45))
            bezier7Path.addLine(to: CGPoint(x: 26.25, y: 50))
            bezier7Path.close()
            return bezier7Path
        }())
        
        
        //// Bezier 8 Drawing
        bezierPath.append({
            let bezier8Path = UIBezierPath()
            bezier8Path.move(to: CGPoint(x: 51.25, y: 57.5))
            bezier8Path.addLine(to: CGPoint(x: 58.75, y: 57.5))
            bezier8Path.addCurve(to: CGPoint(x: 60, y: 56.25), controlPoint1: CGPoint(x: 59.44, y: 57.5), controlPoint2: CGPoint(x: 60, y: 56.94))
            bezier8Path.addLine(to: CGPoint(x: 60, y: 48.75))
            bezier8Path.addCurve(to: CGPoint(x: 58.75, y: 47.5), controlPoint1: CGPoint(x: 60, y: 48.06), controlPoint2: CGPoint(x: 59.44, y: 47.5))
            bezier8Path.addLine(to: CGPoint(x: 51.25, y: 47.5))
            bezier8Path.addCurve(to: CGPoint(x: 50, y: 48.75), controlPoint1: CGPoint(x: 50.56, y: 47.5), controlPoint2: CGPoint(x: 50, y: 48.06))
            bezier8Path.addLine(to: CGPoint(x: 50, y: 56.25))
            bezier8Path.addCurve(to: CGPoint(x: 51.25, y: 57.5), controlPoint1: CGPoint(x: 50, y: 56.94), controlPoint2: CGPoint(x: 50.56, y: 57.5))
            bezier8Path.close()
            bezier8Path.move(to: CGPoint(x: 52.5, y: 50))
            bezier8Path.addLine(to: CGPoint(x: 57.5, y: 50))
            bezier8Path.addLine(to: CGPoint(x: 57.5, y: 55))
            bezier8Path.addLine(to: CGPoint(x: 52.5, y: 55))
            bezier8Path.addLine(to: CGPoint(x: 52.5, y: 50))
            bezier8Path.close()
            return bezier8Path
        }())
        
        
        //// Bezier 9 Drawing
        bezierPath.append({
            let bezier9Path = UIBezierPath()
            bezier9Path.move(to: CGPoint(x: 51.25, y: 45))
            bezier9Path.addLine(to: CGPoint(x: 58.75, y: 45))
            bezier9Path.addCurve(to: CGPoint(x: 60, y: 43.75), controlPoint1: CGPoint(x: 59.44, y: 45), controlPoint2: CGPoint(x: 60, y: 44.44))
            bezier9Path.addLine(to: CGPoint(x: 60, y: 36.25))
            bezier9Path.addCurve(to: CGPoint(x: 58.75, y: 35), controlPoint1: CGPoint(x: 60, y: 35.56), controlPoint2: CGPoint(x: 59.44, y: 35))
            bezier9Path.addLine(to: CGPoint(x: 51.25, y: 35))
            bezier9Path.addCurve(to: CGPoint(x: 50, y: 36.25), controlPoint1: CGPoint(x: 50.56, y: 35), controlPoint2: CGPoint(x: 50, y: 35.56))
            bezier9Path.addLine(to: CGPoint(x: 50, y: 43.75))
            bezier9Path.addCurve(to: CGPoint(x: 51.25, y: 45), controlPoint1: CGPoint(x: 50, y: 44.44), controlPoint2: CGPoint(x: 50.56, y: 45))
            bezier9Path.close()
            bezier9Path.move(to: CGPoint(x: 52.5, y: 37.5))
            bezier9Path.addLine(to: CGPoint(x: 57.5, y: 37.5))
            bezier9Path.addLine(to: CGPoint(x: 57.5, y: 42.5))
            bezier9Path.addLine(to: CGPoint(x: 52.5, y: 42.5))
            bezier9Path.addLine(to: CGPoint(x: 52.5, y: 37.5))
            bezier9Path.close()
            return bezier9Path
        }())
        
        
        //// Bezier 10 Drawing
        bezierPath.append({
            let bezier10Path = UIBezierPath()
            bezier10Path.move(to: CGPoint(x: 51.25, y: 70))
            bezier10Path.addLine(to: CGPoint(x: 58.75, y: 70))
            bezier10Path.addCurve(to: CGPoint(x: 60, y: 68.75), controlPoint1: CGPoint(x: 59.44, y: 70), controlPoint2: CGPoint(x: 60, y: 69.44))
            bezier10Path.addLine(to: CGPoint(x: 60, y: 61.25))
            bezier10Path.addCurve(to: CGPoint(x: 58.75, y: 60), controlPoint1: CGPoint(x: 60, y: 60.56), controlPoint2: CGPoint(x: 59.44, y: 60))
            bezier10Path.addLine(to: CGPoint(x: 51.25, y: 60))
            bezier10Path.addCurve(to: CGPoint(x: 50, y: 61.25), controlPoint1: CGPoint(x: 50.56, y: 60), controlPoint2: CGPoint(x: 50, y: 60.56))
            bezier10Path.addLine(to: CGPoint(x: 50, y: 68.75))
            bezier10Path.addCurve(to: CGPoint(x: 51.25, y: 70), controlPoint1: CGPoint(x: 50, y: 69.44), controlPoint2: CGPoint(x: 50.56, y: 70))
            bezier10Path.close()
            bezier10Path.move(to: CGPoint(x: 52.5, y: 62.5))
            bezier10Path.addLine(to: CGPoint(x: 57.5, y: 62.5))
            bezier10Path.addLine(to: CGPoint(x: 57.5, y: 67.5))
            bezier10Path.addLine(to: CGPoint(x: 52.5, y: 67.5))
            bezier10Path.addLine(to: CGPoint(x: 52.5, y: 62.5))
            bezier10Path.close()
            return bezier10Path
        }())
        
        
        //// Bezier 11 Drawing
        bezierPath.append({
            let bezier11Path = UIBezierPath()
            bezier11Path.move(to: CGPoint(x: 38.75, y: 57.5))
            bezier11Path.addLine(to: CGPoint(x: 46.25, y: 57.5))
            bezier11Path.addCurve(to: CGPoint(x: 47.5, y: 56.25), controlPoint1: CGPoint(x: 46.94, y: 57.5), controlPoint2: CGPoint(x: 47.5, y: 56.94))
            bezier11Path.addLine(to: CGPoint(x: 47.5, y: 48.75))
            bezier11Path.addCurve(to: CGPoint(x: 46.25, y: 47.5), controlPoint1: CGPoint(x: 47.5, y: 48.06), controlPoint2: CGPoint(x: 46.94, y: 47.5))
            bezier11Path.addLine(to: CGPoint(x: 38.75, y: 47.5))
            bezier11Path.addCurve(to: CGPoint(x: 37.5, y: 48.75), controlPoint1: CGPoint(x: 38.06, y: 47.5), controlPoint2: CGPoint(x: 37.5, y: 48.06))
            bezier11Path.addLine(to: CGPoint(x: 37.5, y: 56.25))
            bezier11Path.addCurve(to: CGPoint(x: 38.75, y: 57.5), controlPoint1: CGPoint(x: 37.5, y: 56.94), controlPoint2: CGPoint(x: 38.06, y: 57.5))
            bezier11Path.close()
            bezier11Path.move(to: CGPoint(x: 40, y: 50))
            bezier11Path.addLine(to: CGPoint(x: 45, y: 50))
            bezier11Path.addLine(to: CGPoint(x: 45, y: 55))
            bezier11Path.addLine(to: CGPoint(x: 40, y: 55))
            bezier11Path.addLine(to: CGPoint(x: 40, y: 50))
            bezier11Path.close()
            return bezier11Path
        }())
        
        
        //// Bezier 12 Drawing
        bezierPath.append({
            let bezier12Path = UIBezierPath()
            bezier12Path.move(to: CGPoint(x: 38.75, y: 45))
            bezier12Path.addLine(to: CGPoint(x: 46.25, y: 45))
            bezier12Path.addCurve(to: CGPoint(x: 47.5, y: 43.75), controlPoint1: CGPoint(x: 46.94, y: 45), controlPoint2: CGPoint(x: 47.5, y: 44.44))
            bezier12Path.addLine(to: CGPoint(x: 47.5, y: 36.25))
            bezier12Path.addCurve(to: CGPoint(x: 46.25, y: 35), controlPoint1: CGPoint(x: 47.5, y: 35.56), controlPoint2: CGPoint(x: 46.94, y: 35))
            bezier12Path.addLine(to: CGPoint(x: 38.75, y: 35))
            bezier12Path.addCurve(to: CGPoint(x: 37.5, y: 36.25), controlPoint1: CGPoint(x: 38.06, y: 35), controlPoint2: CGPoint(x: 37.5, y: 35.56))
            bezier12Path.addLine(to: CGPoint(x: 37.5, y: 43.75))
            bezier12Path.addCurve(to: CGPoint(x: 38.75, y: 45), controlPoint1: CGPoint(x: 37.5, y: 44.44), controlPoint2: CGPoint(x: 38.06, y: 45))
            bezier12Path.close()
            bezier12Path.move(to: CGPoint(x: 40, y: 37.5))
            bezier12Path.addLine(to: CGPoint(x: 45, y: 37.5))
            bezier12Path.addLine(to: CGPoint(x: 45, y: 42.5))
            bezier12Path.addLine(to: CGPoint(x: 40, y: 42.5))
            bezier12Path.addLine(to: CGPoint(x: 40, y: 37.5))
            bezier12Path.close()
            return bezier12Path
        }())
        
        
        //// Bezier 13 Drawing
        bezierPath.append({
            let bezier13Path = UIBezierPath()
            bezier13Path.move(to: CGPoint(x: 38.75, y: 70))
            bezier13Path.addLine(to: CGPoint(x: 46.25, y: 70))
            bezier13Path.addCurve(to: CGPoint(x: 47.5, y: 68.75), controlPoint1: CGPoint(x: 46.94, y: 70), controlPoint2: CGPoint(x: 47.5, y: 69.44))
            bezier13Path.addLine(to: CGPoint(x: 47.5, y: 61.25))
            bezier13Path.addCurve(to: CGPoint(x: 46.25, y: 60), controlPoint1: CGPoint(x: 47.5, y: 60.56), controlPoint2: CGPoint(x: 46.94, y: 60))
            bezier13Path.addLine(to: CGPoint(x: 38.75, y: 60))
            bezier13Path.addCurve(to: CGPoint(x: 37.5, y: 61.25), controlPoint1: CGPoint(x: 38.06, y: 60), controlPoint2: CGPoint(x: 37.5, y: 60.56))
            bezier13Path.addLine(to: CGPoint(x: 37.5, y: 68.75))
            bezier13Path.addCurve(to: CGPoint(x: 38.75, y: 70), controlPoint1: CGPoint(x: 37.5, y: 69.44), controlPoint2: CGPoint(x: 38.06, y: 70))
            bezier13Path.close()
            bezier13Path.move(to: CGPoint(x: 40, y: 62.5))
            bezier13Path.addLine(to: CGPoint(x: 45, y: 62.5))
            bezier13Path.addLine(to: CGPoint(x: 45, y: 67.5))
            bezier13Path.addLine(to: CGPoint(x: 40, y: 67.5))
            bezier13Path.addLine(to: CGPoint(x: 40, y: 62.5))
            bezier13Path.close()
            return bezier13Path
        }())
        
        return bezierPath.cgPath
    }()
    
    static let story5path2: CGPath = {
        
        
        //// office-building.svg Group
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 53.17, y: 74.38))
        bezierPath.addLine(to: CGPoint(x: 53.17, y: 74.38))
        bezierPath.addCurve(to: CGPoint(x: 52.09, y: 73.16), controlPoint1: CGPoint(x: 52.57, y: 74.38), controlPoint2: CGPoint(x: 52.09, y: 73.83))
        bezierPath.addLine(to: CGPoint(x: 52.09, y: 8.71))
        bezierPath.addLine(to: CGPoint(x: 38.45, y: 2.25))
        bezierPath.addLine(to: CGPoint(x: 27, y: 7.33))
        bezierPath.addLine(to: CGPoint(x: 27, y: 73.16))
        bezierPath.addLine(to: CGPoint(x: 27, y: 73.16))
        bezierPath.addCurve(to: CGPoint(x: 25.92, y: 74.38), controlPoint1: CGPoint(x: 27, y: 73.83), controlPoint2: CGPoint(x: 26.52, y: 74.38))
        bezierPath.addCurve(to: CGPoint(x: 24.85, y: 73.16), controlPoint1: CGPoint(x: 25.33, y: 74.38), controlPoint2: CGPoint(x: 24.85, y: 73.83))
        bezierPath.addLine(to: CGPoint(x: 24.85, y: 6.51))
        bezierPath.addLine(to: CGPoint(x: 24.85, y: 6.51))
        bezierPath.addCurve(to: CGPoint(x: 25.54, y: 5.37), controlPoint1: CGPoint(x: 24.85, y: 6), controlPoint2: CGPoint(x: 25.12, y: 5.55))
        bezierPath.addLine(to: CGPoint(x: 38.07, y: -0.19))
        bezierPath.addLine(to: CGPoint(x: 38.06, y: -0.18))
        bezierPath.addCurve(to: CGPoint(x: 38.87, y: -0.18), controlPoint1: CGPoint(x: 38.32, y: -0.3), controlPoint2: CGPoint(x: 38.61, y: -0.3))
        bezierPath.addLine(to: CGPoint(x: 53.58, y: 6.78))
        bezierPath.addLine(to: CGPoint(x: 53.59, y: 6.78))
        bezierPath.addCurve(to: CGPoint(x: 54.24, y: 7.9), controlPoint1: CGPoint(x: 53.98, y: 6.97), controlPoint2: CGPoint(x: 54.24, y: 7.41))
        bezierPath.addLine(to: CGPoint(x: 54.24, y: 73.16))
        bezierPath.addLine(to: CGPoint(x: 54.24, y: 73.16))
        bezierPath.addCurve(to: CGPoint(x: 53.17, y: 74.38), controlPoint1: CGPoint(x: 54.24, y: 73.83), controlPoint2: CGPoint(x: 53.76, y: 74.38))
        bezierPath.close()
        
        
        //// Bezier 2 Drawing
        bezierPath.append({
            let bezier2Path = UIBezierPath()
            bezier2Path.move(to: CGPoint(x: 38.46, y: 74.38))
            bezier2Path.addLine(to: CGPoint(x: 38.46, y: 74.38))
            bezier2Path.addCurve(to: CGPoint(x: 37.39, y: 73.16), controlPoint1: CGPoint(x: 37.87, y: 74.38), controlPoint2: CGPoint(x: 37.39, y: 73.83))
            bezier2Path.addLine(to: CGPoint(x: 37.39, y: 0.94))
            bezier2Path.addLine(to: CGPoint(x: 37.39, y: 0.94))
            bezier2Path.addCurve(to: CGPoint(x: 38.46, y: -0.27), controlPoint1: CGPoint(x: 37.39, y: 0.27), controlPoint2: CGPoint(x: 37.87, y: -0.27))
            bezier2Path.addCurve(to: CGPoint(x: 39.54, y: 0.94), controlPoint1: CGPoint(x: 39.06, y: -0.27), controlPoint2: CGPoint(x: 39.54, y: 0.27))
            bezier2Path.addLine(to: CGPoint(x: 39.54, y: 73.16))
            bezier2Path.addLine(to: CGPoint(x: 39.54, y: 73.16))
            bezier2Path.addCurve(to: CGPoint(x: 38.46, y: 74.38), controlPoint1: CGPoint(x: 39.54, y: 73.83), controlPoint2: CGPoint(x: 39.06, y: 74.38))
            bezier2Path.close()
            return bezier2Path
        }())
        
        
        //// Bezier 3 Drawing
        //// Bezier 2 Drawing
        bezierPath.append({
            let bezier3Path = UIBezierPath()
            bezier3Path.move(to: CGPoint(x: 70.54, y: 74.38))
            bezier3Path.addLine(to: CGPoint(x: 70.54, y: 74.38))
            bezier3Path.addCurve(to: CGPoint(x: 69.46, y: 73.16), controlPoint1: CGPoint(x: 69.94, y: 74.38), controlPoint2: CGPoint(x: 69.46, y: 73.83))
            bezier3Path.addLine(to: CGPoint(x: 69.46, y: 35.03))
            bezier3Path.addLine(to: CGPoint(x: 58.94, y: 28.12))
            bezier3Path.addLine(to: CGPoint(x: 53.17, y: 28.12))
            bezier3Path.addLine(to: CGPoint(x: 53.17, y: 28.12))
            bezier3Path.addCurve(to: CGPoint(x: 52.09, y: 26.91), controlPoint1: CGPoint(x: 52.57, y: 28.12), controlPoint2: CGPoint(x: 52.09, y: 27.58))
            bezier3Path.addCurve(to: CGPoint(x: 53.17, y: 25.7), controlPoint1: CGPoint(x: 52.09, y: 26.24), controlPoint2: CGPoint(x: 52.57, y: 25.7))
            bezier3Path.addLine(to: CGPoint(x: 59.23, y: 25.7))
            bezier3Path.addLine(to: CGPoint(x: 59.23, y: 25.7))
            bezier3Path.addCurve(to: CGPoint(x: 59.77, y: 25.86), controlPoint1: CGPoint(x: 59.42, y: 25.7), controlPoint2: CGPoint(x: 59.6, y: 25.75))
            bezier3Path.addLine(to: CGPoint(x: 71.08, y: 33.28))
            bezier3Path.addLine(to: CGPoint(x: 71.08, y: 33.28))
            bezier3Path.addCurve(to: CGPoint(x: 71.62, y: 34.33), controlPoint1: CGPoint(x: 71.41, y: 33.5), controlPoint2: CGPoint(x: 71.62, y: 33.9))
            bezier3Path.addLine(to: CGPoint(x: 71.62, y: 73.16))
            bezier3Path.addLine(to: CGPoint(x: 71.62, y: 73.16))
            bezier3Path.addCurve(to: CGPoint(x: 70.54, y: 74.38), controlPoint1: CGPoint(x: 71.62, y: 73.83), controlPoint2: CGPoint(x: 71.13, y: 74.38))
            bezier3Path.addLine(to: CGPoint(x: 70.54, y: 74.38))
            bezier3Path.close()
            return bezier3Path
        }())
        
        
        //// Bezier 4 Drawing
        bezierPath.append({
            let bezier4Path = UIBezierPath()
            bezier4Path.move(to: CGPoint(x: 59.23, y: 74.38))
            bezier4Path.addLine(to: CGPoint(x: 59.23, y: 74.38))
            bezier4Path.addCurve(to: CGPoint(x: 58.16, y: 73.16), controlPoint1: CGPoint(x: 58.64, y: 74.38), controlPoint2: CGPoint(x: 58.16, y: 73.83))
            bezier4Path.addLine(to: CGPoint(x: 58.16, y: 26.91))
            bezier4Path.addLine(to: CGPoint(x: 58.16, y: 26.91))
            bezier4Path.addCurve(to: CGPoint(x: 59.23, y: 25.7), controlPoint1: CGPoint(x: 58.16, y: 26.24), controlPoint2: CGPoint(x: 58.64, y: 25.7))
            bezier4Path.addCurve(to: CGPoint(x: 60.31, y: 26.91), controlPoint1: CGPoint(x: 59.83, y: 25.7), controlPoint2: CGPoint(x: 60.31, y: 26.24))
            bezier4Path.addLine(to: CGPoint(x: 60.31, y: 73.16))
            bezier4Path.addLine(to: CGPoint(x: 60.31, y: 73.16))
            bezier4Path.addCurve(to: CGPoint(x: 59.23, y: 74.38), controlPoint1: CGPoint(x: 60.31, y: 73.83), controlPoint2: CGPoint(x: 59.83, y: 74.38))
            bezier4Path.close()
            return bezier4Path
        }())
        
        
        //// Bezier 5 Drawing
        bezierPath.append({
            let bezier5Path = UIBezierPath()
            bezier5Path.move(to: CGPoint(x: 3.82, y: 74.38))
            bezier5Path.addLine(to: CGPoint(x: 3.82, y: 74.38))
            bezier5Path.addCurve(to: CGPoint(x: 2.74, y: 73.16), controlPoint1: CGPoint(x: 3.22, y: 74.38), controlPoint2: CGPoint(x: 2.74, y: 73.83))
            bezier5Path.addLine(to: CGPoint(x: 2.74, y: 35.37))
            bezier5Path.addLine(to: CGPoint(x: 2.74, y: 35.37))
            bezier5Path.addCurve(to: CGPoint(x: 3.82, y: 34.16), controlPoint1: CGPoint(x: 2.74, y: 34.7), controlPoint2: CGPoint(x: 3.22, y: 34.16))
            bezier5Path.addLine(to: CGPoint(x: 25.92, y: 34.16))
            bezier5Path.addLine(to: CGPoint(x: 25.92, y: 34.16))
            bezier5Path.addCurve(to: CGPoint(x: 27, y: 35.37), controlPoint1: CGPoint(x: 26.52, y: 34.16), controlPoint2: CGPoint(x: 27, y: 34.7))
            bezier5Path.addCurve(to: CGPoint(x: 25.92, y: 36.59), controlPoint1: CGPoint(x: 27, y: 36.04), controlPoint2: CGPoint(x: 26.52, y: 36.59))
            bezier5Path.addLine(to: CGPoint(x: 4.9, y: 36.59))
            bezier5Path.addLine(to: CGPoint(x: 4.9, y: 73.16))
            bezier5Path.addLine(to: CGPoint(x: 4.9, y: 73.16))
            bezier5Path.addCurve(to: CGPoint(x: 3.82, y: 74.38), controlPoint1: CGPoint(x: 4.9, y: 73.83), controlPoint2: CGPoint(x: 4.41, y: 74.38))
            bezier5Path.close()
            return bezier5Path
        }())
        
        
        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(roundedRect: CGRect(x: 6.63, y: 38.64, width: 4.55, height: 2.85), cornerRadius: 1.42)
        
        let rectangle2Path = UIBezierPath(roundedRect: CGRect(x: 12.97, y: 38.64, width: 4.55, height: 2.85), cornerRadius: 1.42)
        
        let rectangle3Path = UIBezierPath(roundedRect: CGRect(x: 19.28, y: 38.64, width: 4.55, height: 2.85), cornerRadius: 1.42)
        
        let rectangle4Path = UIBezierPath(roundedRect: CGRect(x: 6.63, y: 44.09, width: 4.55, height: 2.85), cornerRadius: 1.42)
        
        let rectangle5Path = UIBezierPath(roundedRect: CGRect(x: 12.97, y: 44.09, width: 4.55, height: 2.85), cornerRadius: 1.42)
        
        let rectangle6Path = UIBezierPath(roundedRect: CGRect(x: 19.28, y: 44.09, width: 4.55, height: 2.85), cornerRadius: 1.42)
        
        let rectangle7Path = UIBezierPath(roundedRect: CGRect(x: 6.63, y: 50.59, width: 4.55, height: 1.85), cornerRadius: 0.93)
        
        let rectangle8Path = UIBezierPath(roundedRect: CGRect(x: 12.97, y: 50.59, width: 4.55, height: 1.85), cornerRadius: 0.93)
        
        let rectangle9Path = UIBezierPath(roundedRect: CGRect(x: 19.28, y: 50.59, width: 4.55, height: 1.85), cornerRadius: 0.93)
        
        let rectangle10Path = UIBezierPath(roundedRect: CGRect(x: 6.63, y: 56.04, width: 4.55, height: 1.85), cornerRadius: 0.93)
        
        let rectangle11Path = UIBezierPath(roundedRect: CGRect(x: 12.97, y: 56.04, width: 4.55, height: 1.85), cornerRadius: 0.93)
        
        let rectangle12Path = UIBezierPath(roundedRect: CGRect(x: 19.28, y: 56.04, width: 4.55, height: 1.85), cornerRadius: 0.93)
        
        let rectangle13Path = UIBezierPath(roundedRect: CGRect(x: 6.63, y: 61.49, width: 4.55, height: 2.85), cornerRadius: 1.43)
        
        let rectangle14Path = UIBezierPath(roundedRect: CGRect(x: 12.97, y: 61.49, width: 4.55, height: 2.85), cornerRadius: 1.43)
        
        let rectangle15Path = UIBezierPath(roundedRect: CGRect(x: 19.28, y: 61.49, width: 4.55, height: 2.85), cornerRadius: 1.43)
        
        let rectangle16Path = UIBezierPath(roundedRect: CGRect(x: 6.63, y: 66.99, width: 4.55, height: 2.85), cornerRadius: 1.43)
        
        let rectangle17Path = UIBezierPath(roundedRect: CGRect(x: 12.97, y: 66.99, width: 4.55, height: 2.85), cornerRadius: 1.43)
        
        let rectangle18Path = UIBezierPath(roundedRect: CGRect(x: 19.28, y: 66.99, width: 4.55, height: 2.85), cornerRadius: 1.43)
        
        let rectangle19Path = UIBezierPath(roundedRect: CGRect(x: 33.62, y: 8.51, width: 1.85, height: 3.9), cornerRadius: 0.92)
        
        let rectangle20Path = UIBezierPath(roundedRect: CGRect(x: 29.07, y: 9.56, width: 1.85, height: 4.9), cornerRadius: 0.92)
        
        let rectangle21Path = UIBezierPath(roundedRect: CGRect(x: 33.62, y: 17.56, width: 1.85, height: 3.9), cornerRadius: 0.92)
        
        let rectangle22Path = UIBezierPath(roundedRect: CGRect(x: 29.07, y: 18.61, width: 1.85, height: 4.9), cornerRadius: 0.92)
        
        let rectangle23Path = UIBezierPath(roundedRect: CGRect(x: 33.62, y: 26.58, width: 1.85, height: 4.9), cornerRadius: 0.92)
        
        let rectangle24Path = UIBezierPath(roundedRect: CGRect(x: 29.07, y: 27.61, width: 1.85, height: 4.9), cornerRadius: 0.92)
        
        let rectangle25Path = UIBezierPath(roundedRect: CGRect(x: 33.62, y: 35.61, width: 1.85, height: 4.9), cornerRadius: 0.92)
        
        let rectangle26Path = UIBezierPath(roundedRect: CGRect(x: 29.07, y: 36.66, width: 1.85, height: 4.9), cornerRadius: 0.92)
        
        let rectangle27Path = UIBezierPath(roundedRect: CGRect(x: 33.62, y: 44.66, width: 1.85, height: 4.9), cornerRadius: 0.92)
        
        let rectangle28Path = UIBezierPath(roundedRect: CGRect(x: 29.07, y: 45.72, width: 1.85, height: 4.9), cornerRadius: 0.92)
        
        let rectangle29Path = UIBezierPath(roundedRect: CGRect(x: 33.62, y: 53.71, width: 1.85, height: 4.9), cornerRadius: 0.92)
        
        let rectangle30Path = UIBezierPath(roundedRect: CGRect(x: 29.07, y: 54.76, width: 1.85, height: 4.9), cornerRadius: 0.92)
        
        bezierPath.append({
            let bezier6Path = UIBezierPath()
            bezier6Path.move(to: CGPoint(x: 34.67, y: 67.58))
            bezier6Path.addLine(to: CGPoint(x: 34.67, y: 67.58))
            bezier6Path.addCurve(to: CGPoint(x: 33.59, y: 66.37), controlPoint1: CGPoint(x: 34.08, y: 67.58), controlPoint2: CGPoint(x: 33.59, y: 67.04))
            bezier6Path.addLine(to: CGPoint(x: 33.59, y: 64.09))
            bezier6Path.addLine(to: CGPoint(x: 33.59, y: 64.09))
            bezier6Path.addCurve(to: CGPoint(x: 34.67, y: 62.87), controlPoint1: CGPoint(x: 33.59, y: 63.42), controlPoint2: CGPoint(x: 34.08, y: 62.87))
            bezier6Path.addCurve(to: CGPoint(x: 35.75, y: 64.09), controlPoint1: CGPoint(x: 35.27, y: 62.87), controlPoint2: CGPoint(x: 35.75, y: 63.42))
            bezier6Path.addLine(to: CGPoint(x: 35.75, y: 66.38))
            bezier6Path.addLine(to: CGPoint(x: 35.75, y: 66.37))
            bezier6Path.addCurve(to: CGPoint(x: 34.67, y: 67.58), controlPoint1: CGPoint(x: 35.75, y: 67.04), controlPoint2: CGPoint(x: 35.27, y: 67.58))
            bezier6Path.close()
            return bezier6Path
        }())
        
        //// Rectangle 31 Drawing
        let rectangle31Path = UIBezierPath(roundedRect: CGRect(x: 29.07, y: 63.8, width: 1.85, height: 4.9), cornerRadius: 0.92)
        
        let rectangle32Path = UIBezierPath(roundedRect: CGRect(x: 41.38, y: 6.92, width: 1.85, height: 4.9), cornerRadius: 0.93)
        
        bezierPath.append({
            let bezier7Path = UIBezierPath()
            
            bezier7Path.move(to: CGPoint(x: 45.73, y: 13.21))
            bezier7Path.addLine(to: CGPoint(x: 45.73, y: 13.21))
            bezier7Path.addCurve(to: CGPoint(x: 44.65, y: 12), controlPoint1: CGPoint(x: 45.14, y: 13.21), controlPoint2: CGPoint(x: 44.65, y: 12.67))
            bezier7Path.addLine(to: CGPoint(x: 44.65, y: 9.71))
            bezier7Path.addLine(to: CGPoint(x: 44.65, y: 9.71))
            bezier7Path.addCurve(to: CGPoint(x: 45.73, y: 8.5), controlPoint1: CGPoint(x: 44.65, y: 9.04), controlPoint2: CGPoint(x: 45.14, y: 8.5))
            bezier7Path.addCurve(to: CGPoint(x: 46.81, y: 9.71), controlPoint1: CGPoint(x: 46.32, y: 8.5), controlPoint2: CGPoint(x: 46.81, y: 9.04))
            bezier7Path.addLine(to: CGPoint(x: 46.81, y: 12))
            bezier7Path.addLine(to: CGPoint(x: 46.81, y: 12))
            bezier7Path.addCurve(to: CGPoint(x: 45.73, y: 13.21), controlPoint1: CGPoint(x: 46.81, y: 12.67), controlPoint2: CGPoint(x: 46.32, y: 13.21))
            bezier7Path.close()
            return bezier7Path
        }())
        
        
        //// Rectangle 33 Drawing
        let rectangle33Path = UIBezierPath(roundedRect: CGRect(x: 48.07, y: 9.56, width: 2.85, height: 4.9), cornerRadius: 1.43)
        
        let rectangle34Path = UIBezierPath(roundedRect: CGRect(x: 41.38, y: 15.79, width: 1.85, height: 4.9), cornerRadius: 0.93)
        
        let rectangle35Path = UIBezierPath(roundedRect: CGRect(x: 44.73, y: 17.61, width: 1.85, height: 4.9), cornerRadius: 0.93)
        
        let rectangle36Path = UIBezierPath(roundedRect: CGRect(x: 48.07, y: 19.41, width: 2.85, height: 4.9), cornerRadius: 1.43)
        
        let rectangle37Path = UIBezierPath(roundedRect: CGRect(x: 41.38, y: 25.6, width: 1.85, height: 3.95), cornerRadius: 0.93)
        
        let rectangle38Path = UIBezierPath(roundedRect: CGRect(x: 44.73, y: 26.46, width: 1.85, height: 4.9), cornerRadius: 0.93)
        
        let rectangle39Path = UIBezierPath(roundedRect: CGRect(x: 48.07, y: 28.26, width: 2.85, height: 4.9), cornerRadius: 1.43)
        
        let rectangle40Path = UIBezierPath(roundedRect: CGRect(x: 41.38, y: 34.51, width: 1.85, height: 4.9), cornerRadius: 0.93)
        
        let rectangle41Path = UIBezierPath(roundedRect: CGRect(x: 44.73, y: 35.31, width: 1.85, height: 4.9), cornerRadius: 0.93)
        
        let rectangle42Path = UIBezierPath(roundedRect: CGRect(x: 48.07, y: 37.11, width: 2.85, height: 4.9), cornerRadius: 1.43)
        
        //// Bezier 8 Drawing
        bezierPath.append({
            let bezier8Path = UIBezierPath()
            bezier8Path.move(to: CGPoint(x: 42.1, y: 48.05))
            bezier8Path.addLine(to: CGPoint(x: 42.1, y: 48.05))
            bezier8Path.addCurve(to: CGPoint(x: 41.02, y: 46.83), controlPoint1: CGPoint(x: 41.5, y: 48.05), controlPoint2: CGPoint(x: 41.02, y: 47.5))
            bezier8Path.addLine(to: CGPoint(x: 41.02, y: 44.55))
            bezier8Path.addLine(to: CGPoint(x: 41.02, y: 44.55))
            bezier8Path.addCurve(to: CGPoint(x: 42.1, y: 43.34), controlPoint1: CGPoint(x: 41.02, y: 43.88), controlPoint2: CGPoint(x: 41.5, y: 43.34))
            bezier8Path.addCurve(to: CGPoint(x: 43.17, y: 44.55), controlPoint1: CGPoint(x: 42.69, y: 43.34), controlPoint2: CGPoint(x: 43.17, y: 43.88))
            bezier8Path.addLine(to: CGPoint(x: 43.17, y: 46.84))
            bezier8Path.addLine(to: CGPoint(x: 43.17, y: 46.83))
            bezier8Path.addCurve(to: CGPoint(x: 42.1, y: 48.05), controlPoint1: CGPoint(x: 43.17, y: 47.5), controlPoint2: CGPoint(x: 42.69, y: 48.05))
            bezier8Path.close()
            return bezier8Path
        }())
        
        
        //// Rectangle 43 Drawing
        let rectangle43Path = UIBezierPath(roundedRect: CGRect(x: 44.73, y: 45.16, width: 1.85, height: 4.9), cornerRadius: 0.93)
        
        let rectangle44Path = UIBezierPath(roundedRect: CGRect(x: 48.07, y: 45.96, width: 2.85, height: 4.9), cornerRadius: 1.43)
        
        let rectangle45Path = UIBezierPath(roundedRect: CGRect(x: 41.38, y: 52.21, width: 1.85, height: 4.9), cornerRadius: 0.93)
        
        let rectangle46Path = UIBezierPath(roundedRect: CGRect(x: 44.73, y: 54.01, width: 1.85, height: 4.9), cornerRadius: 0.93)
        
        let rectangle47Path = UIBezierPath(roundedRect: CGRect(x: 48.07, y: 55.86, width: 2.85, height: 3.9), cornerRadius: 1.43)
        
        let rectangle48Path = UIBezierPath(roundedRect: CGRect(x: 41.38, y: 61.06, width: 1.85, height: 4.9), cornerRadius: 0.93)
        
        let rectangle49Path = UIBezierPath(roundedRect: CGRect(x: 44.73, y: 62.86, width: 1.85, height: 4.9), cornerRadius: 0.93)
        
        let rectangle50Path = UIBezierPath(roundedRect: CGRect(x: 48.07, y: 64.71, width: 2.85, height: 4.9), cornerRadius: 1.43)
        
        let rectangle51Path = UIBezierPath(roundedRect: CGRect(x: 61.57, y: 33.99, width: 2.85, height: 3.85), cornerRadius: 1.43)
        
        let rectangle52Path = UIBezierPath(roundedRect: CGRect(x: 65.93, y: 36.64, width: 1.85, height: 3.85), cornerRadius: 0.93)
        
        let rectangle53Path = UIBezierPath(roundedRect: CGRect(x: 61.57, y: 40.15, width: 2.85, height: 2.85), cornerRadius: 1.42)
        
        bezierPath.append({
            let bezier9Path = UIBezierPath()
            bezier9Path.move(to: CGPoint(x: 66.6, y: 46.01))
            bezier9Path.addLine(to: CGPoint(x: 66.6, y: 46.01))
            bezier9Path.addCurve(to: CGPoint(x: 65.52, y: 44.8), controlPoint1: CGPoint(x: 66, y: 46.01), controlPoint2: CGPoint(x: 65.52, y: 45.47))
            bezier9Path.addLine(to: CGPoint(x: 65.52, y: 43.58))
            bezier9Path.addLine(to: CGPoint(x: 65.52, y: 43.58))
            bezier9Path.addCurve(to: CGPoint(x: 66.6, y: 42.37), controlPoint1: CGPoint(x: 65.52, y: 42.91), controlPoint2: CGPoint(x: 66, y: 42.37))
            bezier9Path.addCurve(to: CGPoint(x: 67.67, y: 43.58), controlPoint1: CGPoint(x: 67.19, y: 42.37), controlPoint2: CGPoint(x: 67.67, y: 42.91))
            bezier9Path.addLine(to: CGPoint(x: 67.67, y: 44.81))
            bezier9Path.addLine(to: CGPoint(x: 67.67, y: 44.8))
            bezier9Path.addCurve(to: CGPoint(x: 66.6, y: 46.01), controlPoint1: CGPoint(x: 67.67, y: 45.47), controlPoint2: CGPoint(x: 67.19, y: 46.01))
            bezier9Path.close()
            return bezier9Path
        }())
        
        
        //// Rectangle 54 Drawing
        let rectangle54Path = UIBezierPath(roundedRect: CGRect(x: 61.57, y: 45.34, width: 2.85, height: 3.85), cornerRadius: 1.43)
        
        let rectangle55Path = UIBezierPath(roundedRect: CGRect(x: 65.93, y: 47.99, width: 1.85, height: 3.85), cornerRadius: 0.93)
        
        let rectangle56Path = UIBezierPath(roundedRect: CGRect(x: 61.57, y: 51.49, width: 2.85, height: 3.85), cornerRadius: 1.43)
        
        let rectangle57Path = UIBezierPath(roundedRect: CGRect(x: 65.93, y: 54.14, width: 1.85, height: 3.85), cornerRadius: 0.93)
        
        let rectangle58Path = UIBezierPath(roundedRect: CGRect(x: 61.57, y: 57.64, width: 2.85, height: 3.8), cornerRadius: 1.43)
        
        let rectangle59Path = UIBezierPath(roundedRect: CGRect(x: 65.93, y: 60.34, width: 1.85, height: 3.85), cornerRadius: 0.93)
        
        let rectangle60Path = UIBezierPath(roundedRect: CGRect(x: 61.57, y: 63.84, width: 2.85, height: 3.85), cornerRadius: 1.43)
        
        let rectangle61Path = UIBezierPath(roundedRect: CGRect(x: 65.93, y: 66.49, width: 1.85, height: 3.85), cornerRadius: 0.93)
        
        
        bezierPath.append({
            let bezier10Path = UIBezierPath()
            bezier10Path.move(to: CGPoint(x: 73.77, y: 74.36))
            bezier10Path.addLine(to: CGPoint(x: 0.59, y: 74.36))
            bezier10Path.addLine(to: CGPoint(x: 0.59, y: 74.36))
            bezier10Path.addCurve(to: CGPoint(x: -0.48, y: 73.15), controlPoint1: CGPoint(x: -0, y: 74.36), controlPoint2: CGPoint(x: -0.48, y: 73.82))
            bezier10Path.addCurve(to: CGPoint(x: 0.59, y: 71.93), controlPoint1: CGPoint(x: -0.48, y: 72.48), controlPoint2: CGPoint(x: -0, y: 71.93))
            bezier10Path.addLine(to: CGPoint(x: 73.77, y: 71.93))
            bezier10Path.addLine(to: CGPoint(x: 73.77, y: 71.93))
            bezier10Path.addCurve(to: CGPoint(x: 74.84, y: 73.15), controlPoint1: CGPoint(x: 74.36, y: 71.93), controlPoint2: CGPoint(x: 74.84, y: 72.48))
            bezier10Path.addCurve(to: CGPoint(x: 73.77, y: 74.36), controlPoint1: CGPoint(x: 74.84, y: 73.82), controlPoint2: CGPoint(x: 74.36, y: 74.36))
            bezier10Path.close()
            return bezier10Path
        }())
        
        
        bezierPath.append(rectanglePath)
        bezierPath.append(rectangle2Path)
        bezierPath.append(rectangle3Path)
        bezierPath.append(rectangle4Path)
        bezierPath.append(rectangle5Path)
        bezierPath.append(rectangle6Path)
        bezierPath.append(rectangle7Path)
        bezierPath.append(rectangle8Path)
        bezierPath.append(rectangle9Path)
        bezierPath.append(rectangle11Path)
        bezierPath.append(rectangle12Path)
        bezierPath.append(rectangle13Path)
        bezierPath.append(rectangle14Path)
        bezierPath.append(rectangle15Path)
        bezierPath.append(rectangle16Path)
        bezierPath.append(rectangle17Path)
        bezierPath.append(rectangle18Path)
        bezierPath.append(rectangle19Path)
        bezierPath.append(rectangle20Path)
        bezierPath.append(rectangle21Path)
        bezierPath.append(rectangle22Path)
        bezierPath.append(rectangle23Path)
        bezierPath.append(rectangle24Path)
        bezierPath.append(rectangle25Path)
        bezierPath.append(rectangle26Path)
        bezierPath.append(rectangle27Path)
        bezierPath.append(rectangle28Path)
        bezierPath.append(rectangle29Path)
        bezierPath.append(rectangle30Path)
        bezierPath.append(rectangle31Path)
        bezierPath.append(rectangle32Path)
        bezierPath.append(rectangle33Path)
        bezierPath.append(rectangle34Path)
        bezierPath.append(rectangle35Path)
        bezierPath.append(rectangle36Path)
        bezierPath.append(rectangle37Path)
        bezierPath.append(rectangle38Path)
        bezierPath.append(rectangle39Path)
        bezierPath.append(rectangle40Path)
        bezierPath.append(rectangle41Path)
        bezierPath.append(rectangle42Path)
        bezierPath.append(rectangle43Path)
        bezierPath.append(rectangle44Path)
        bezierPath.append(rectangle45Path)
        bezierPath.append(rectangle46Path)
        bezierPath.append(rectangle47Path)
        bezierPath.append(rectangle48Path)
        bezierPath.append(rectangle49Path)
        bezierPath.append(rectangle50Path)
        bezierPath.append(rectangle51Path)
        bezierPath.append(rectangle52Path)
        bezierPath.append(rectangle53Path)
        bezierPath.append(rectangle54Path)
        bezierPath.append(rectangle55Path)
        bezierPath.append(rectangle56Path)
        bezierPath.append(rectangle57Path)
        bezierPath.append(rectangle58Path)
        bezierPath.append(rectangle59Path)
        bezierPath.append(rectangle60Path)
        bezierPath.append(rectangle61Path)
        
        
        return bezierPath.cgPath
    }()
}
