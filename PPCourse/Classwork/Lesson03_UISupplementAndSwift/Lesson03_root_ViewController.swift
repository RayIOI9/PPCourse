//
//  Lesson03_root_ViewController.swift
//  PPCourse
//
//  Created by Ray on 2024/7/18.
//

import UIKit

class Lesson03_root_ViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // 隐藏舊的 Tab Bar
        self.tabBarController?.tabBar.isHidden = true
    }
    
//    目前不需要返回恢復
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        // 返回時恢復舊的 Tab Bar
//        self.tabBarController?.tabBar.isHidden = false
//    }

    override func viewDidLoad() {
        super.viewDidLoad();

        practiseSWIFT();
    }
    
    /// documentation comment  用///開頭，格式如下
    ///
    /// 這邊是discussion
    /// 將課堂於playground練習的程式整理過來紀錄
    ///
    /// ps.跳行了還會是discussion
    ///
    /// - Parameters:
    ///   - 參數1: 參數1說明
    ///   - para2: 參數2說明
    ///
    /// - Returns: 回傳資料說明
    ///
    /// - Throws: `xxxError.xxxgodie` 拋出錯誤說明
    private func practiseSWIFT(){
        print("eee", terminator: "eee")

        var greeting = "Hello, playground"

        // --------------------07/18

        // 字串
        let firstName: String = "Peter"
        let textarea: String =
        """
        可以放多行字串
        """
        let city: String = "Taipei"
        let welcomeString = "Hello \(firstName), welcome to \(city)"
        var str = String(repeating: "yo ", count: 3);

        // 數字
        var number = Int(8.7);
        // 整數
        let age: Int = 25
        let numberOfItems: UInt = 50
        // 浮點數
        let pi: Float = 3.14159
        let precisePi: Double = 3.141592653589793
        // Decimal
        // 大數字
        let largeNumber: Decimal = Decimal(string: "12345678901234567890123456789012345678")!
        print("Large Number: \(largeNumber)")
        // 小數字
        let smallNumber: Decimal = Decimal(string: "0.00000000000000000000000000000000000001")!
        print("Small Number: \(smallNumber)")

        // 精確計算
        let price: Decimal = 10.99
        let taxRate: Decimal = 0.07
        let taxAmount = price * taxRate
        let totalPrice = price + taxAmount

        print("Price: \(price)")
        print("Tax Amount: \(taxAmount)")
        print("Total Price: \(totalPrice)")

        // ============================
        
        // 生成 SF Symbols 的圖片: 參數名 systemName
        let SFImage = UIImage(systemName: "wifi")

        // 疊圖練習1
        let winnieImage = UIImage(named: "image0718去背.png")
        let winnieImageView = UIImageView(image: winnieImage)
        // CGFloat也是浮點數的一種
        winnieImageView.backgroundColor = UIColor(red: 10/255, green: 18/255, blue: 10/255, alpha: 0)
        // frame 屬性改大小
        winnieImageView.frame = CGRect(x: 10, y: 10, width: 1000, height: 1000)
        // 設定底圖
        let patternImageView = UIImageView(image: UIImage(named: "菱格底圖.jpg"))
        patternImageView.backgroundColor = UIColor(red: 10/255, green: 18/255, blue: 10/255, alpha: 1)
        patternImageView.frame = winnieImageView.frame
        // 疊上addSubview()
        patternImageView.addSubview(winnieImageView)


        // 疊圖練習2
        var rect = CGRect(x: 0, y: 0, width: 200, height: 200)
        let redView = UIView(frame: rect)
        redView.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)

        rect = CGRect(x: 10, y: 10, width: 100, height: 100)
        let greenView = UIView(frame: rect)
        greenView.backgroundColor = UIColor(red: 0, green: 1, blue: 0, alpha: 1)

        //疊第1張
        redView.addSubview(greenView)

        rect = CGRect(x: 30, y: 50, width: 100, height: 100)
        let blueView = UIView(frame: rect)
        blueView.backgroundColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1)

        //疊第2張
        redView.addSubview(blueView)

        
    }
    

        


}
