//
//  Lesson04ClassFunc.swift
//  PPCourse
//
//  Created by Ray on 2024/7/30.
//

//
//
///*============ 型別屬性 ================*/
//
//// 補充: 型別屬性
//// 改顏色
//winnieImageView.backgroundColor = UIColor.clear // 透明顏色
//winnieImageView.backgroundColor = UIColor.red
//winnieImageView.backgroundColor = UIColor.systemRed
//// 型別確定的情況下可省略
//winnieImageView.backgroundColor = .clear
//
//// 其他常用型別屬性例子
//let maxInt: Int = Int.max
//let minInt: Int = Int.min
//let mathPi: Double = Double.pi
//let nowTime: Date = Date.now
//
///*============  UIView的layer屬性 ================*/
//
//// 設定view邊框
//// - layer 是UIView很重要的屬性
////      > 會得到 CALayer 物件。CALayer 物件控制元件呈現的樣子，比方圓角和陰影。CA是 Core Animation 的縮寫。
//patternImageView.layer.borderWidth = 50 // 型別是CGFloat 也是浮點數的型別，跟 Float 類似
//patternImageView.layer.borderWidth = CGFloat(50)
////patternImageView
//
//// 創建一個 UIView
//let myView = UIView(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
//myView.backgroundColor = .white
//
//// 設置圖層背景顏色
//myView.layer.backgroundColor = UIColor.red.cgColor
//
//// 設置圖層圓角半徑
//myView.layer.cornerRadius = 20
//
//// 設置圖層邊框寬度
//myView.layer.borderWidth = 5
//
//// 設置圖層邊框顏色
//myView.layer.borderColor = UIColor.blue.cgColor
//
//// 設置圖層陰影顏色
//myView.layer.shadowColor = UIColor.black.cgColor
//
//// 設置圖層陰影不透明度
//myView.layer.shadowOpacity = 0.8
//
//// 設置圖層陰影偏移量
//myView.layer.shadowOffset = CGSize(width: 10, height: 10)
//
//// 設置圖層陰影模糊半徑
//myView.layer.shadowRadius = 5
//
//// 設置子圖層是否被限制在父圖層的邊界內
//myView.layer.masksToBounds = false
//
//// 設置圖層的內容 (例如圖片)
//// myView.layer.contents = UIImage(named: "example.png")?.cgImage
//
//// 設置內容的對齊方式
//// myView.layer.contentsGravity = .resizeAspectFill
//
//// 設置圖層的不透明度
//myView.layer.opacity = 0.9
//
//// 設置圖層的 3D 變換
//var transform = CATransform3DIdentity
//transform = CATransform3DRotate(transform, .pi / 4, 0, 0, 1)
//myView.layer.transform = transform
//
//// 設置圖層在 Z 軸上的位置
//myView.layer.zPosition = 1
//
//// 設置圖層的錨點
//myView.layer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
//
////// 添加視圖
////self.view.addSubview(myView)
//
//
///*============ 型別轉型問題 ================*/
//
//// 設定view邊框
//// - layer 是UIView很重要的屬性
////      > 會得到 CALayer 物件。CALayer 物件控制元件呈現的樣子，比方圓角和陰影。CA是 Core Animation 的縮寫。
//patternImageView.layer.borderWidth = 50 // 型別是CGFloat 也是浮點數的型別，跟 Float 類似
//patternImageView.layer.borderWidth = CGFloat(50)
//
//// UIColor CGColor不同
//// CGColor 及 UIColor 間的轉換
//patternImageView.layer.borderColor = UIColor(red: 0, green: 0, blue: 1, alpha:1).cgColor
//patternImageView.layer.borderColor = CGColor(red: 0, green: 0, blue: 1, alpha: 1)
//
///*============ UIView的Transform屬性 ================*/
//
//// 字體Label設定
//let msgLabel = UILabel(frame: CGRect(x: 300, y: 200, width: 300, height: 100))
//msgLabel.text = "測試測試"
//msgLabel.textColor = .red
//msgLabel.font = UIFont.systemFont(ofSize: 55)
//
//patternImageView.addSubview(msgLabel)
//
////UIView的Transform屬性 -> 用來轉換 大小、位置、旋轉
////Transform屬性為CGAffineTransform型別
////> CGAffineTransform 用於表示2D變換。它可以用來對2D圖形進行旋轉、縮放、平移和傾斜等操作。
//
//msgLabel.backgroundColor = .blue
//
////改大小 scaleX, scaleY 分別代表在X軸和Y軸上的縮放比例(幾倍)
//msgLabel.transform = CGAffineTransform(scaleX: 1.5, y: 0.8)
////移動 向右移動20 向下移動30
//msgLabel.transform = CGAffineTransform(translationX: 20, y: 30)
////旋轉 用pi來表示180度，若要45度： .pi / 180 * 45 也可直接計算為 .pi / 4
//msgLabel.transform = CGAffineTransform(rotationAngle: .pi / 180 * 45)
//
//// 也可以組合多個變換
//let scaleTransform = CGAffineTransform(scaleX: 1.5, y: 0.8)
//let moveTransform = CGAffineTransform(translationX: 250, y: 80)
//let rotateTransform = CGAffineTransform(rotationAngle: .pi / 180 * 45)
//msgLabel.transform = scaleTransform.concatenating(moveTransform).concatenating(rotateTransform) // 先縮放 再移動 再旋轉
//
//////patternImageView
////import PlaygroundSupport //跟PlaygroundPage有關
////// 需import PlaygroundSupport
////// liveView可以傳入UIView或UIViewController顯示執行，用來在Playground內產生即時畫面
////PlaygroundPage.current.liveView = patternImageView
//
///*============ 各種常用好用元件練習 ================*/
//
//// 播音樂
//import AVFoundation
//let url = URL(string:"https://audio-ssl.itunes.apple.com/apple-assets-us-std-000001/AudioPreview118/v4/69/0e/98/690e98db-440d-cb0c-2bff-91b00a05bdda/mzaf_1674062311671795807.plus.aac.p.m4a")
//let player = AVPlayer(url: url!)
////player.play()
//
//// 播影片
//// > 要用AVPlayerViewController才能看到畫面
//import AVKit //影片聲音有關-AVPlayerViewController
//import PlaygroundSupport //跟PlaygroundPage有關
//
//let url2 = URL(string: "https://www.youtube.com/watch?v=-CdYbQJjU-E")
//let player2 = AVPlayer(url: url2!)
//let controller = AVPlayerViewController()
//controller.player = player2
//
//// 需import PlaygroundSupport
//// liveView可以傳入UIView或UIViewController顯示執行，用來在Playground內產生即時畫面
////PlaygroundPage.current.liveView = controller
////player2.play()
//
//// 瀏覽器
//import SafariServices
//import PlaygroundSupport
//
//let url3 = URL(string: "https://apppeterpan.mystrikingly.com")
//let controller3 = SFSafariViewController(url: url3!)
////PlaygroundPage.current.liveView = controller3
//
//// 地圖
//import MapKit
//import PlaygroundSupport
//
//let mapView = MKMapView(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
//// 傳入經緯度, latitudinalMeters, longitudinalMeters 顯示經緯公尺範圍
//mapView.region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.500936, longitude: -0.124636), latitudinalMeters: 1000, longitudinalMeters: 1000)
////PlaygroundPage.current.liveView = mapView
//
//// 日期時間 ios15後有更多新作法，可參考補充
//import Foundation
//var now = Date()
//
//// 1. 時間
//print(now) // 顯示出來是UTC +0 但沒有關係，大部分在app元件顯示時會是以手機時區顯示
//now.addTimeInterval(91)
//print(now)
//
////2. 日期
//// 日期格式化
//let dateFormatter = DateFormatter()
//dateFormatter.dateFormat = "yyyy==MM++dd"
//let dateStr = dateFormatter.string(from: now) // 顯示出來為設備時區日期
//
//// 日曆物件dateComponents
//let dateComponents = Calendar.current.dateComponents(in: .current, from: now) //傳入時區
//let month = dateComponents.month
//let day = dateComponents.day
//
//
//func greet(person: String, message: String) {
//    print("\(message), \(person)!")
//}
//
////greet("Alice", message: "Hello") // 正確：第一個參數不需要外部參數名
////greet(person: "Alice", message: "Hello") // 錯誤：不能為第一個參數指定外部參數名
//
///*============ UIBezierPath 後搭配 CAShapeLayer 做出任意形狀的 view ================*/
//
//
//// 練習可在viewDidLoad內畫
//
//// 產生 UIBezierPath。
//let path = UIBezierPath()
//// 利用 move 移動到座標 (0, 0) 的位置，以 (0, 0) 為起點。
//path.move(to: CGPoint(x: 0, y: 0))
//// 利用 addLine 畫線，從 (0,0) 畫線到 (100, 0)。
//path.addLine(to: CGPoint(x: 100, y: 0))
//path.addLine(to: CGPoint(x: 100, y: 100))
//// 呼叫 UIBezierPath 的 close() 即可從目前所在的位置 (100, 100) 連線回起點 (0,0)
//path.close()
//
//// 生成能顯示在畫面上的形狀，CAShapeLayer
//// IBezierPath 繪製的路徑是虛擬的，無法顯示在 App 畫面上
//// 因此需要產生能顯示在畫面上的 CAShapeLayer。
//// CAShapeLayer 代表某種形狀，透過它的 path 屬性設定形狀(型別是CGPath，UIBezierPath需轉型)
//let trianglelayer = CAShapeLayer()
//trianglelayer.path = path.cgPath
//// 將 CAShapeLayer 加到 view 上
//view.layer.addSublayer(trianglelayer)
//
//
//// 設定 CAShapeLayer 填滿形狀的顏色
//let trianglelayer = CAShapeLayer()
//trianglelayer.path = path.cgPath
//triangleLayer.fillColor = CGColor(srgbRed: 0, green: 0, blue: 1, alpha: 1)
//
//// 繪製線條，而不填滿形狀
//let triangleLayer = CAShapeLayer()
//triangleLayer.path = path.cgPath
//triangleLayer.strokeColor = CGColor(srgbRed: 0, green: 0, blue: 1, alpha: 1)
//triangleLayer.fillColor = UIColor.clear.cgColor
//triangleLayer.lineWidth = 10
//view.layer.addSublayer(triangleLayer)
//
//// 繪製彎曲的曲線
//let path = UIBezierPath()
//path.move(to: CGPoint(x: 50, y: 50))
//// 利用B點controlPoint做彎曲
//
//path.addQuadCurve(to: CGPoint(x: 50, y: 200), controlPoint: CGPoint(x: 150, y: 125))
//    
//let layer = CAShapeLayer()
//layer.path = path.cgPath
//layer.lineWidth = 3
//layer.strokeColor = UIColor.black.cgColor
//layer.fillColor = UIColor.clear.cgColor
//view.layer.addSublayer(layer)
//
//// 畫圓型
//// 繪製的形狀填滿顏色時將以圓弧和圓弧兩端點連線包含的區塊
//let aDegree = Double.pi / 180
//let path = UIBezierPath(arcCenter: CGPoint(x: 50, y: 50), radius: 40, startAngle: aDegree * 0, endAngle: aDegree * 180, clockwise: true)
//
//let layer = CAShapeLayer()
//layer.path = path.cgPath
//layer.fillColor = UIColor.red.cgColor
//view.layer.addSublayer(layer)
//
///*============ Function ================*/
//
//var a:String = "ray"
//func tes(name: String){
//    print("test \(a)")
//}
//tes(name: "")
//
//// 有預設值為可選參數
//func eat(name:String,price:Int = 50){}
//eat(name: "eee")
//
//// 回傳資料的func
//func addNumber(startNum :Int,endNum:Int) -> Int {
//    return 10
//}
//
//// 無回傳的寫法 除了不給箭頭
//func sing1(){ }
//func sing2() -> (){ }
//func sing3() -> Void{ }
////() 跟 Void的寫法是一樣的
//public typealias Void = ()
//
//// 幫型別曲好聽的別名 typealias
//typealias rayt = Int
//var yo: rayt = 1000
//
///*============ 參數是常數不可修改 ================*/
//func greet(person: String) {
//    var mutablePerson = person
//    mutablePerson = "Bob" // 現在可以修改這個變量的值
//    
//    print("Hello, \(mutablePerson)!")
//}
//
//greet(person: "Alice") // 輸出：Hello, Bob!
//
///*============ 傳址參數(inout &) ================*/
//func increment(_ number: inout Int) {
//    number += 1
//}
//
//var value = 5
//increment(&value)
//print(value) // 輸出：6
//
///*============ parameter external name 、 Internal name ================*/
//func eat(name: String, price: String)
//{
//    let message = "spent $\(price) on \(name)"
//    print(message)
//}
//eat(name: "steak", price: "100")
//
//func eat2(nameOut nameIn: String, priceOut priceIn: String)
//{
//    let message = "spent $\(priceIn) on \(nameIn)"
//    print(message)
//}
//eat2(nameOut: "steak", priceOut: "100")
//
//// Ignore parameter names
//
//func eat3(_ nameIn: String, _ priceIn: String)
//{
//    let message = "spent $\(priceIn) on \(nameIn)"
//    print(message)
//}
//eat3("steak", "100")
//
///*============ ？？？ ================*/
//// 類別物件
//
//class Baby{
//    var age = 1
//    var name = "yyy"
//    
//    func getOlder(){
//        age += 1
//        print(age)
//    }
//}
//var cutBaby = Baby()
//
//cutBaby.getOlder()
//cutBaby.getOlder()
//
//// inheritance
//// Usually starts with a capital letter
//class SuperBaby:Baby{
//    var magic:String="隱形"
//}
//
//var cuteBBb:Baby = SuperBaby()
//cuteBBb.age
//// cuteBBb.magic 這會出錯
//
//var cuteBBbb = SuperBaby()
//cuteBBbb.magic
//
////type property & type method
//
//class supersususuBaby{
//    var magic:String="隱形"
//    
//    static var maxAge = 100
//    static func createWhiteAquariusBaby() -> Baby {
//        let cuteBaby = Baby()
//        cuteBaby.name = "peter"
//        return cuteBaby
//    }
//}
//// static property can't use by object
//let maxAge = supersususuBaby.maxAge
//let cuteBaby = supersususuBaby.createWhiteAquariusBaby()
//
//
////// 用class宣告型別 計算屬性(computed property）、方法
////在需要允許子類重寫屬性或方法時使用 class，否則使用 static。這兩者在特定情況下可以互換使用，但在功能和用途上有明顯的區別。
////> 存儲屬性只能用static
////class UIColor {
////    open class var black: UIColor { get } // 0.0 white
////    open class var darkGray: UIColor { get } // 0.333 white
////    open class var lightGray: UIColor { get } // 0.667 white
////    open class var white: UIColor { get } // 1.0 white
////}
//
//let color1 = UIColor.red
//let color2 = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
//
//// 靜態屬性也可設private - 常用在實作單例模式
//class ImageCache {
//    // 私有的靜態屬性用來順放單例物件確認唯一
//    private static var mInstance:ImageCache?
//    static func sharedInstance() -> ImageCache {
//        if mInstance == nil {
//            mInstance = ImageCache()
//
//        }
//        return mInstance!
//    }
//    // 複寫建構子避免外部調用
//    private init(){
//
//    }
//    // 下面再定義其他屬於此單例物件的方法...
//}
//
////
//var atext: String? = Optional(String())
