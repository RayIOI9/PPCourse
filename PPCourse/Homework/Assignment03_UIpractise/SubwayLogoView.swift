//
//  SubwayLogoView.swift
//  PPCourse
//
//  Created by Ray on 2024/7/25.
//

import Foundation
import UIKit

class SubwayLogoView: UIView {
    
    override func draw(_ rect: CGRect) {
//        •    完全自定義視圖：如果不依賴父類的繪製邏輯，可以不調用 super.draw(rect)。
//        •    子類化標準 UI 元素：通常應該調用 super.draw(rect) 以保證標準元素的繪製行為不受影響。
//        > 例如：若是繼承UILabel，因其繪製邏輯在父層，就會需要super.draw(rect)
//        super.draw(rect)
        
        // 設置綠色部分
        let greenColor = UIColor(red: 0/255, green: 125/255, blue: 50/255, alpha: 1.0)
        greenColor.setFill()
        
        let greenPath = UIBezierPath()
        greenPath.move(to: CGPoint(x: 0, y: 0))
        greenPath.addLine(to: CGPoint(x: rect.width, y: 0))
        greenPath.addLine(to: CGPoint(x: rect.width, y: rect.height / 2))
        greenPath.addLine(to: CGPoint(x: 0, y: rect.height / 2))
        greenPath.close()
        greenPath.fill()
        
        // 設置黃色部分
        let yellowColor = UIColor(red: 255/255, green: 204/255, blue: 0/255, alpha: 1.0)
        yellowColor.setFill()
        
        let yellowPath = UIBezierPath()
        yellowPath.move(to: CGPoint(x: 0, y: rect.height / 2))
        yellowPath.addLine(to: CGPoint(x: rect.width, y: rect.height / 2))
        yellowPath.addLine(to: CGPoint(x: rect.width, y: rect.height))
        yellowPath.addLine(to: CGPoint(x: 0, y: rect.height))
        yellowPath.close()
        yellowPath.fill()
        
        // 設置白色文字 "Subway"
        let subwayText = "Subway"
        let attributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.boldSystemFont(ofSize: 80),
            .foregroundColor: UIColor.white
        ]
        
        let textSize = subwayText.size(withAttributes: attributes)
        let textRect = CGRect(x: (rect.width - textSize.width) / 2,
                              y: (rect.height - textSize.height) / 2,
                              width: textSize.width,
                              height: textSize.height)
        
        subwayText.draw(in: textRect, withAttributes: attributes)
        
        // 繪製箭頭
        let arrowPath = UIBezierPath()
        
        // 綠色箭頭
        arrowPath.move(to: CGPoint(x: rect.width - 40, y: 10))
        arrowPath.addLine(to: CGPoint(x: rect.width - 10, y: rect.height / 2))
        arrowPath.addLine(to: CGPoint(x: rect.width - 40, y: rect.height - 10))
        arrowPath.close()
        greenColor.setFill()
        arrowPath.fill()
        
        // 黃色箭頭
        let yellowArrowPath = UIBezierPath()
        yellowArrowPath.move(to: CGPoint(x: 40, y: rect.height - 10))
        yellowArrowPath.addLine(to: CGPoint(x: 10, y: rect.height / 2))
        yellowArrowPath.addLine(to: CGPoint(x: 40, y: 10))
        yellowArrowPath.close()
        yellowColor.setFill()
        yellowArrowPath.fill()
    }
    
}
