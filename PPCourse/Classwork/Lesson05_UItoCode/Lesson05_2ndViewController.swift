//
//  Lesson05_2ndViewController.swift
//  PPCourse
//
//  Created by Ray on 2024/7/25.
//

import UIKit

class Lesson05_2ndViewController: UIViewController {

    
    @IBOutlet weak var myImg: UIImageView!
    var backView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var alphaSlider: UISlider!
    
    @IBOutlet weak var moveSlider: UISlider!
    
    @IBOutlet weak var redStepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 設置 UIStepper
        redStepper.minimumValue = 0
        redStepper.maximumValue = 1
        redStepper.stepValue = 0.1
        redStepper.value = Double(redSlider.value)
        
        // 設置 moveXSlider
        moveSlider.minimumValue = -100
        moveSlider.maximumValue = 100
        moveSlider.value = 0
        
        myImg.image = UIImage(named: "Lesson05_去背img")
        setupView()
    }
    

    @IBAction func greenRandom(_ sender: UIButton) {
        // 設置 greenSlider 為隨機值
        greenSlider.value = Float.random(in: 0...1)
        changeColor(greenSlider)
        
        
    }
    
    @IBAction func moveX(_ sender: UISlider) {
        // 根據 slider 的值調整 imageView 的中心 x 坐標
        let translation = CGFloat(sender.value)
        myImg.transform = CGAffineTransform(translationX: translation, y: 0)
        
    }
    @IBAction func addRed(_ sender: UIStepper) {
        // 若有多個 stepper 可以判斷
        // if sender == redStepper{}
        
        // 取得目前的 red 值
        let currentRedValue = CGFloat(redSlider.value)
        
        
        print("redStepper.value: \(redStepper.value)")
        print("currentRedValue: \(currentRedValue)")
        print("sender.stepValue: \(sender.stepValue)")
        print("sender.value: \(sender.value)")
        // 根據 stepper 的值調整 red 值
        var newRedValue =
        sender.value > currentRedValue ?
            currentRedValue + sender.stepValue :
            currentRedValue - sender.stepValue
        print("newRedValue: \(newRedValue)")
        // 確保 red 值在 0 到 1 之間
        if newRedValue >= 1 {
            newRedValue = 1
            
            return
        }
        if newRedValue <= 0  {
            newRedValue = 0
            return
        }
        
        // 更新 redSlider 和 overlayView 的顏色
        redSlider.value = Float(newRedValue)
        sender.value = Double(newRedValue)
        print("更新完成")
        changeColor(redSlider)
    }
    @IBAction func changeColor(_ sender: UISlider) {
        
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        // 本來alpha是想調整img的background但算了
        let alpha = CGFloat(alphaSlider.value)
        
        backView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension Lesson05_2ndViewController{
    func setupView(){
        // 練習1: 設定底圖
        self.backView = UIView(frame: myImg.frame)
        backView.backgroundColor = .SK
        view.addSubview(backView)
        // 將 UIView 層級設置為在 UIImageView 的下方
        view.sendSubviewToBack(backView)
        
        // 練習2: 漸層底色
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.frame = backView.bounds
//        gradientLayer.colors =
//            [UIColor.orange.cgColor, UIColor.blue.cgColor]
//        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
//        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
//        backView.layer.insertSublayer(gradientLayer, at: 0)
////        backView.layer.addSublayer(gradientLayer)
        
        
    }
}


@available(iOS 17.0, *)
#Preview {
    let storyboard = UIStoryboard(name: "Lesson05", bundle: nil)
    // withIdentifier要填StoryBoard ID
    return storyboard.instantiateViewController(withIdentifier: "Lesson05_2ndViewController")
}

//#Preview {
//    Lesson05_2ndViewController()
//}
