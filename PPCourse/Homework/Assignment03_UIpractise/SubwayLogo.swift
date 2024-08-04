//
//  SubwayLogo.swift
//  PPCourse
//
//  Created by Ray on 2024/7/25.
//

import Foundation
import UIKit

class SubwayLogo {

    let logo: CAShapeLayer!
    
    init(){
        // 繪製愛心形狀
        let path = UIBezierPath()
        let startPoint = CGPoint(x: 150, y: 230)
        let topCenter = CGPoint(x: 150, y: 130)
        let leftControlPoint1 = CGPoint(x: 100, y: 80)
        let leftControlPoint2 = CGPoint(x: 50, y: 150)
        let rightControlPoint1 = CGPoint(x: 200, y: 80)
        let rightControlPoint2 = CGPoint(x: 250, y: 150)
        
        // 開始繪製愛心形狀
        path.move(to: startPoint)
        path.addCurve(to: topCenter, controlPoint1: leftControlPoint2, controlPoint2: leftControlPoint1)
        path.addCurve(to: startPoint, controlPoint1: rightControlPoint1, controlPoint2: rightControlPoint2)
        path.close()
        
        let trianglelayer = CAShapeLayer()
        trianglelayer.path = path.cgPath
        trianglelayer.fillColor = UIColor.systemYellow.cgColor // 填滿顏色
       
        self.logo = trianglelayer
    }
}
